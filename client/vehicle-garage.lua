lib.registerContext({
  id = 'LSPDGarage',
  title = "👮 Police Garage",
  options = {
    {
      title = 'Police Scout',
      description = "SUV designed for PO1 and higher!",
      icon = 'fa-shard fa-solid fa-car-side',
      onSelect = function()
        ESX.Game.SpawnVehicle('nkscout', vector3(425.9272, -988.9481, 24.9969), 269.8336, function(vehicle)
          ESX.Game.SetVehicleProperties(vehicle, {
            color2 = 112,
            modLivery = 0,
            modXenon = true,
            dirtLevel = 0,
            extras = {1, 4, 5, 10, 11},
          })
          lib.notify({
            id = 'PoliceGarage',
            title = 'Police Garage',
            description = 'Your vehicle has been spawned!',
            position = 'top-right',
            icon = 'fa-solid fa-car',
            iconColor = "#7393B3",
          })
        end)
      end,
    },
  },
})  

exports.ox_target:addBoxZone({
  coords = vec3(459.8988, -998.0654, 25.6998),
  options = {
    {
     name = "Police Garage",
     icon = 'fa-solid fa-car',
     onSelect = function()
      lib.showContext("LSPDGarage")
    end,
     label = "Open Police Garage",
    }
  }
})