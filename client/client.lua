local randomNumber = math.random(10, 99)

lib.registerContext({
    id = 'LSPDGarage',
    title = "👮 Police Garage",
    options = {
      {
        title = 'Police Scout',
        description = 'Vehicle for PO I and higher',
        icon = 'fa-shard fa-solid fa-car-side',
        onSelect = function()
          ESX.Game.SpawnVehicle('nkscout', vector3(425.9272, -988.9481, 24.9969), 269.8336, function(vehicle)
            ESX.Game.SetVehicleProperties(vehicle, {
              plate = '01LSPD', randomNumber,
              color2 = 112,
              modLivery = 0,
              modXenon = true,
              dirtLevel = 0,
              extras = {1, 4, 5, 10, 11},
            })
            lib.notify({
              id = 'Garage',
              title = 'Garage',
              description = 'Your vehicle has been spawned!',
              position = 'top',
              icon = 'fa-shard fa-solid fa-car-side',
              iconColor = "#228B22"
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
       icon = 'fa-sharp fa-solid fa-garage',
       onSelect = function()
        lib.showContext("PDGarage")
      end,
       label = "Open Garage",
      }
    }
  })