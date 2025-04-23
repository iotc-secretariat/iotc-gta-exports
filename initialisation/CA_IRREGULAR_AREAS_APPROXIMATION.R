



# Mapping between irregular areas and closest CWP grid
MAPPING_IRREGULAR_AREA_CWP = data.table(dbGetQuery(DB_IOTDB(), "SELECT ACode AS IRR_AREA_CODE, EngDescr AS IRR_AREA_NAME, RegArea AS CWP
FROM dbo.cdeGeoFeatures
WHERE 
LEFT(ACode, 1) NOT IN ('1', '2', '3', '4', '5', '6', '7', '8', '9')
AND LEFT(RegArea, 1) IN ('5', '6');"))