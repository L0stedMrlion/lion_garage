lib.registerContext({
  id = 'policegarage',
  title = "Police Garage",
  options = {
    {
      title = 'Police Coquette',
      description = "High speed vehicle for Command staff!",
      icon = 'fa-shard fa-solid fa-car-side',
      onSelect = function()
        ESX.Game.SpawnVehicle('nkcoquette', vector3(437.5774, -991.6628, 24.9986), 89.3771, function(vehicle)
          ESX.Game.SetVehicleProperties(vehicle, {
            color2 = 112,
            modLivery = 0,
            modXenon = true,
            modEngine = 5,
            modBrakes = 5,
            dirtLevel = 0,
            extras = {1, 4, 5, 10, 11},
          })
          lib.notify({
            title = 'Garage',
            description = 'Your vehicle has been successfully spawned!',
            type = 'success'
        })
        end)
      end,
    },
    {
      title = 'Police Bravado STX',
      description = "High speed vehicle for Seargeant and higher!",
      icon = 'fa-shard fa-solid fa-car-side',
      onSelect = function()
        ESX.Game.SpawnVehicle('polbuffalo4', vector3(437.5544, -994.4741, 24.9995), 88.9421, function(vehicle)
          ESX.Game.SetVehicleProperties(vehicle, {
            color2 = 112,
            modLivery = 0,
            modXenon = true,
            dirtLevel = 0,
            extras = {1, 4, 5, 10, 11},
          })
          lib.notify({
            title = 'Garage',
            description = 'Your vehicle has been successfully spawned!',
            type = 'success'
        })
        end)
      end,
    },
    {
      title = 'Police Buffalo S',
      description = "Fast sedan for officers!",
      icon = 'fa-shard fa-solid fa-car-side',
      onSelect = function()
        ESX.Game.SpawnVehicle('nkbuffalos', vector3(437.2692, -996.8796, 24.9984), 88.3752, function(vehicle)
          ESX.Game.SetVehicleProperties(vehicle, {
            color2 = 112,
            modLivery = 0,
            modXenon = true,
            dirtLevel = 0,
            extras = {1},
          })
          lib.notify({
            title = 'Garage',
            description = 'Your vehicle has been successfully spawned!',
            type = 'success'
        })
        end)
      end,
    },
    {
      title = 'Police Scout 2020',
      description = "Newer SUV than Scout, still very good!",
      icon = 'fa-shard fa-solid fa-car-side',
      onSelect = function()
        ESX.Game.SpawnVehicle('nkscout2020', vector3(425.2960, -994.3598, 24.9975), 269.1217, function(vehicle)
          ESX.Game.SetVehicleProperties(vehicle, {
            color2 = 112,
            modLivery = 0,
            modXenon = true,
            dirtLevel = 0,
            extras = {1, 4, 5, 10, 11},
          })
          lib.notify({
            title = 'Garage',
            description = 'Your vehicle has been successfully spawned!',
            type = 'success'
        })
        end)
      end,
    },
    {
      title = 'Police Scout',
      description = "Good SUV designed for lower ranks!",
      icon = 'fa-shard fa-solid fa-car-side',
      onSelect = function()
        ESX.Game.SpawnVehicle('nkscout', vector3(425.3988, -991.5338, 25.0023), 269.4314, function(vehicle)
          ESX.Game.SetVehicleProperties(vehicle, {
            color2 = 112,
            modLivery = 0,
            modXenon = true,
            dirtLevel = 0,
            extras = {1},
          })
          lib.notify({
            title = 'Garage',
            description = 'Your vehicle has been successfully spawned!',
            type = 'success'
        })
        end)
      end,
    },
  },
})