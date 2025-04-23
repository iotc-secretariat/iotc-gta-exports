
NC_GEARS = unique(NC_raw()[, .(GEAR_CODE, GEAR)])
CE_GEARS = unique(CE_raw()[, .(GEAR_CODE, GEAR)])
SF_GEARS = unique(SF_raw()[, .(GEAR_CODE, GEAR)])

GEAR_FULL_LIST = unique(rbindlist(list(NC_GEARS, CE_GEARS, SF_GEARS)))[order(as.character(GEAR_CODE))]
write.xlsx(GEAR_FULL_LIST, "./outputs/GEAR_FULL_LIST.xlsx")
