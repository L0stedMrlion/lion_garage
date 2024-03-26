lib.registerContext({
    id = 'LSPDGarage',
    title = "Police Garage",
    options = {
      {
        title = 'Police Coquette',
        description = "High Speed vehicle designed for good drivers!",
        icon = 'fa-solid fa-car-side',
        onSelect = function()
          ESX.Game.SpawnVehicle('nkcoquette', vector3(425.9272, -988.9481, 24.9969), 269.8336, function(vehicle)
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
      {
        title = 'Police Bravado STX',
        description = "High Speed vehicle designed for good drivers!",
        icon = 'fa-solid fa-car-side',
        onSelect = function()
          ESX.Game.SpawnVehicle('polbuffalo4', vector3(425.9272, -988.9481, 24.9969), 269.8336, function(vehicle)
            ESX.Game.SetVehicleProperties(vehicle, {
              color2 = 112,
              modLivery = 0,
              modXenon = true,
              dirtLevel = 0,
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
      {
        title = 'Police Buffalos',
        description = "Fast vehicles designed for PO3 and higher!",
        icon = 'fa-solid fa-car-side',
        onSelect = function()
          ESX.Game.SpawnVehicle('nkbuffalos', vector3(425.9272, -988.9481, 24.9969), 269.8336, function(vehicle)
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
      {
        title = 'Police Scout 2020',
        description = "SUV designed for PO2 and higher!",
        icon = 'fa-solid fa-car-side',
        onSelect = function()
          ESX.Game.SpawnVehicle('nkscout2020', vector3(425.9272, -988.9481, 24.9969), 269.8336, function(vehicle)
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
      {
        title = 'Police Scout',
        description = "SUV designed for PO1 and higher!",
        icon = 'fa-solid fa-car-side',
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

  -- HELICOPTER GARAGE

  lib.registerContext({
    id = 'Heliport',
    title = "👮 Police Heliport",
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

-- PROMPTS ---

-- garage
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

-- HELIPORT
exports.ox_target:addBoxZone({
  coords = vec3(462.3411, -979.8678, 43.6916),
  options = {
    {
     name = "Police Garage",
     icon = 'fa-solid fa-helicopter',
     onSelect = function()
      lib.showContext("Heliport")
    end,
     label = "Open Police Heliport",
    }
  }
})
