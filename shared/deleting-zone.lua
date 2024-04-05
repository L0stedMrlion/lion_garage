local policegaragedelete = lib.zones.box({
    coords = vec3(432.8573, -975.3348, 25.6998),
    size = vec3(14, 6, 4),
    debug = false,
  }) 
  local isInZone = false
  local garagebinddel = lib.addKeybind({
    name = 'LionGarageGarageDelete',
    description = 'Bind to open the garage',
    defaultKey = 'E',
    onPressed = function()
        if isInZone then
                    local playerCoords = GetEntityCoords(GetPlayerPed(-1))
                    local closestVehicle, closestDistance = ESX.Game.GetClosestVehicle(playerCoords)
                    if closestVehicle then
                      ESX.Game.DeleteVehicle(closestVehicle)
                    else
                      print("No vehicle found nearby.")
                    end
                  end
                end
              })
  function policegaragedelete:onEnter()
    isInZone = true
    if isInZone then
        lib.showTextUI('[E] - Zaparkování vozidla')
    end
  end
  function policegaragedelete:onExit()
    isInZone = false
    if not isInZone then
        lib.hideTextUI()
        garagebinddel:disable(true)
    end
  end
  function policegaragedelete:inside(self)
    garagebinddel:disable(false)
  end