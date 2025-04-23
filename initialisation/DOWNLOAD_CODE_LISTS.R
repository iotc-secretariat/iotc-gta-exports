# CODE LISTS ####

## ASFIS species ####
if(!file.exists("../inputs/codelists/cl_asfis_species.csv")) 
  
download.file("https://raw.githubusercontent.com/fdiwg/fdi-codelists/main/global/cwp/cl_asfis_species.csv", destfile = "../inputs/codelists/cl_asfis_species.csv", mode = "wb")

## ISSCFG gears ####
if(!file.exists("../inputs/codelists/cl_isscfg_gear.csv")) 
  
download.file("https://raw.githubusercontent.com/fdiwg/fdi-codelists/main/global/cwp/cl_isscfg_gear.csv", destfile = "../inputs/codelists/cl_isscfg_gear.csv", mode = "wb")

## FIRMS fleets ####
if (!file.exists("../inputs/codelists/cl_fishing_fleet.csv"))
  
download.file("https://raw.githubusercontent.com/fdiwg/fdi-codelists/main/global/firms/gta/cl_fishing_fleet.csv", destfile = "../inputs/codelists/cl_fishing_fleet.csv", mode = "wb")

## IOTC main areas ##
if (!file.exists("../inputs/codelists/cl_nc_iotc_areas.csv"))
  
download.file("https://raw.githubusercontent.com/fdiwg/fdi-codelists/main/global/firms/gta/cl_nc_iotc_areas.csv", destfile = "../inputs/codelists/cl_nc_iotc_areas.csv", mode = "wb")

# MAPPINGS ####

## Species mapping ####
if (!file.exists("../inputs/mappings/codelist_mapping_species_iotc_species_asfis.csv")) 
  
download.file("https://raw.githubusercontent.com/fdiwg/fdi-mappings/main/regional-to-global/IOTC/codelist_mapping_species_iotc_species_asfis.csv", destfile = "../inputs/mappings/codelist_mapping_species_iotc_species_asfis.csv", mode = "wb")

## Gear mapping ####
if(!file.exists("../inputs/mappings/codelist_mapping_gear_iotc_isscfg_revision_1.csv"))

download.file("https://raw.githubusercontent.com/fdiwg/fdi-mappings/main/regional-to-global/IOTC/codelist_mapping_gear_iotc_isscfg_revision_1.csv", destfile = "../inputs/mappings/codelist_mapping_gear_iotc_isscfg_revision_1.csv", mode = "wb")

## Gear group mapping ####
if(!file.exists("../inputs/codelists/cl_geargroup_tunaatlas.csv"))
  
download.file("https://raw.githubusercontent.com/fdiwg/fdi-codelists/main/global/firms/gta/cl_geargroup_tunaatlas.csv", destfile = "../inputs/codelists/cl_geargroup_tunaatlas.csv", mode = "wb")

## Fleet mapping ####
if(!file.exists("../inputs/mappings/codelist_mapping_flag_iotc_fishingfleet_firms.csv"))

download.file("https://raw.githubusercontent.com/fdiwg/fdi-mappings/main/regional-to-global/IOTC/codelist_mapping_flag_iotc_fishingfleet_firms.csv", destfile = "../inputs/mappings/codelist_mapping_flag_iotc_fishingfleet_firms.csv", mode = "wb")

# FILTERINGS ####

## Species filtering file ####
if(!file.exists("../inputs/codelists/cl_species_level0.csv"))
  
download.file("https://raw.githubusercontent.com/fdiwg/fdi-codelists/main/global/firms/gta/cl_species_level0.csv", destfile = "../inputs/codelists/cl_species_level0.csv", mode = "wb")

