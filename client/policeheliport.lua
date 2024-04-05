lib.registerContext({
    id = 'policeheliport',
    title = "Police Heliport",
    options = {
      {
        title = 'Police Maverick',
        description = "Police Helicopter designed for trained pilots!",
        icon = 'fa-solid fa-helicopter',
        onSelect = function()
          ESX.Game.SpawnVehicle('polmav', vector3(449.3038, -981.0339, 44.0783), 269.1044, function(vehicle)
            ESX.Game.SetVehicleProperties(vehicle, {
              modLivery = 0,
            })
            lib.notify({
              id = 'PoliceHeliport',
              title = 'Police Heliport',
              description = 'Your helicopter has been spawned!',
              position = 'top-right',
              icon = 'fa-solid fa-helicopter',
              iconColor = "#7393B3",
            })
          end)
        end,
      },
  },
})  