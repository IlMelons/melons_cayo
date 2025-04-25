local IslandParts = lib.load("data.island")

local function ActiveCayo()
    for _, part in pairs(IslandParts) do
        RequestIpl(part)
    end
end

local function SetupAmbient()
    SetAudioFlag("DisableFlightMusic", true)
    SetAmbientZoneListStatePersistent("AZL_DLC_Hei4_Island_Zones", true, true)
    SetAmbientZoneListStatePersistent("AZL_DLC_Hei4_Island_Disabled_Zones", false, true)
end

local function DisableConflicts()
    SetZoneEnabled(GetZoneFromNameId("PrLog"), false)
    LoadGlobalWaterType(1)
end

AddEventHandler("onClientResourceStart", function(resourceName)
    local scriptName = cache.resource or GetCurrentResourceName()
    if resourceName ~= scriptName then return end
    ActiveCayo()
    SetupAmbient()
    DisableConflicts()
end)