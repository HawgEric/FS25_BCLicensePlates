customLicensePlate = {}

modDirectory = g_currentModDirectory

function customLicensePlate.loadMapData(self, superFunc, xmlFile, missionInfo, baseDirectory)
    local path = modDirectory.."xml/licensePlates.xml"
    local plateXML = loadXMLFile("FS25_BCLicensePlates", path)

    local returnValue = superFunc(self, plateXML, missionInfo, modDirectory)

    return returnValue
end
LicensePlateManager.loadMapData = Utils.overwrittenFunction(LicensePlateManager.loadMapData, customLicensePlate.loadMapData)