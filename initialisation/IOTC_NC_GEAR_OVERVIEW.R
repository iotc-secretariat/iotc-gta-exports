
# Libraries
library(iotc.base.common.plots)

# Extract the data

# Nominal catches
NC = data.table(read.xlsx("../inputs/datasets/IOTC/IOTC-DATASETS-NCDB.xlsx", sheet = "Catches_Captures"))
NC_GEAR = NC[, .(CATCH = sum(`Catch/Capture(t)`)), keyby = .(IOTC_GEAR_CODE = GrCde, IOTC_GEAR = Gear)][order(CATCH, decreasing = T)]

# ISSCFG
MappingGear = fread("../inputs/mappings/codelist_mapping_gear_iotc_isscfg_revision_1.csv", colClasses = "character")[order(src_code)]
Gears = fread("../inputs/codelists/isscfg_revision_1.csv", colClasses = "character", encoding = "UTF-8")
                      
# Merge with ASFIS gear codes
NC_GEAR = merge(NC_GEAR, MappingGear[, .(src_code, trg_code)], by.x = "IOTC_GEAR_CODE", by.y = "src_code", all.x = T)
NC_GEAR = merge(NC_GEAR, Gears, by.x = "trg_code", by.y = "code", all.x = TRUE )
setnames(NC_GEAR, old = c("trg_code", "label", "standard_abbreviations" ), new = c("ISSCFG_CODE", "ISSCFG_LABEL", "ISSCFG_ABBREVIATION"))
setcolorder(NC_GEAR, neworder = c("IOTC_GEAR_CODE", "IOTC_GEAR", "ISSCFG_CODE", "ISSCFG_LABEL", "ISSCFG_ABBREVIATION", "CATCH"))

write.csv(NC_GEAR, "../outputs/IOTC_NC_GEARS_OVERVIEW.csv", row.names = FALSE)
