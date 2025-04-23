# Retained catches ####
# Excluding Indonesia
RC_PS = NC[GEAR_CODE == "PS", .(CATCH = sum(CATCH)), keyby = .(YEAR, FLEET_CODE, GEAR_CODE, SPECIES_CODE)]

# Geo-Referenced catches
CA_PS = CA_raw(gear_codes = "PS", years = START_YEAR:END_YEAR, species_codes = RC_PS$SPECIES_CODE, factorize_results = FALSE)[, .(CATCH_BY_ST = sum(CATCH)), keyby = .(YEAR, FLEET_CODE, GEAR_CODE, CATCH_SCHOOL_TYPE_CODE, SPECIES_CODE)]

# Merge Datasets
RC_CA_PS = merge(RC_PS, CA_PS, by = c("YEAR", "FLEET_CODE", "GEAR_CODE", "SPECIES_CODE"), all.x = TRUE, suffixes = c("_NC", "_CA"))

RC_CA_PS[, CATCH_CA   := sum(CATCH_BY_ST, na.rm = TRUE), by = .(YEAR, FLEET_CODE, GEAR_CODE, SPECIES_CODE)]
RC_CA_PS[, PROP_BY_ST := CATCH_BY_ST/CATCH_CA]
RC_CA_PS[!is.na(CATCH_SCHOOL_TYPE_CODE), CATCH      := CATCH * PROP_BY_ST]  # for checks

RC_PS_STRATA_SCHOOL_TYPE_PROP = RC_CA_PS[!is.na(CATCH_SCHOOL_TYPE_CODE), .(YEAR, FLEET_CODE, GEAR_CODE, SPECIES_CODE, CATCH_SCHOOL_TYPE_CODE, PROP_BY_ST)]

# Strata With Spatial Catches not available in RC
# RC_CA_PS[CATCH_BY_ST>0 & is.na(CATCH) & FLEET_CODE != "NEIPS"]


