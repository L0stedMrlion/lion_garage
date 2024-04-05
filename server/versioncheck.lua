if Config.Updates then
  PerformHttpRequest("https://raw.githubusercontent.com//L0stedMrlion/LionProjectVersion/main/LionGarage", function(err, Version, headers)
      if err then
          print("^1[ERROR] Failed to check for updates: " .. err)
          print("^1[ERROR] Please check your internet connection and try again later.")
      else
          local CleanVersion = string.sub(Version, 1, #Version - 1)
          local ScriptVersion = GetResourceMetadata(GetCurrentResourceName(), "version")
          
          if ScriptVersion == CleanVersion then
              print("^2[INFO] LionGarage has the latest version!")
          else
              print("^3[UPDATE] Update for LionGarage is available! ("..ScriptVersion.. " -> " ..CleanVersion.. ")")
              print("^3[UPDATE] https://github.com/L0stedMrlion/LionGarage")
          end
      end
  end)
end
