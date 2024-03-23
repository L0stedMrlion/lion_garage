if Config.Updates then
    PerformHttpRequest("https://raw.githubusercontent.com//L0stedMrlion/LionProjectVersion/main/LionGarage", function(err, Version, headers)

        local ScriptVersion = GetResourceMetadata(GetCurrentResourceName(), "version")
    
        if ScriptVersion ~= Version then
            print("^3[UPDATE] Update for LionGarage is available! ("..ScriptVersion.. " -> " ..Version.. ")")
            print("^3[UPDATE] https://github.com/L0stedMrlion/LionGarage")
        else
            print("^2[INFO] LionGarage have latest version!")
        end
    end)
end