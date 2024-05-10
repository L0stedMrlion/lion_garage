lib.registerContext({
    id = 'policegarage',
    title = '👮 Police Garage',
    options = {
      {
        title = '🚔 Patrol Vehicles',
        description = 'Open a garage for normal patrol vehicles!',
        menu = 'policegaragepatrol',
      },
      {
        title = '🏍️ Motorcycles',
        description = 'Open a garage with motorcycles.',
        menu = 'policegaragemotorcycles',
      },
      {
        title = '🥷 Metro Vehicles',
        description = 'Open a garage with metro division vehicles!',
        menu = 'policegaragemetro',
      },
      }
  })

  lib.registerContext({
    id = 'policegaragepatrol',
    title = "🚓 Garage - Patrol Vehicles",
    menu = "policegarage",
    canClose = true,
    options = {
        {
            title = '🚓 Police Coquette',
            description = "High-speed command vehicle for swift response!",
            onSelect = function()
                ESX.Game.SpawnVehicle('nkcoquette', vector3(437.5774, -991.6628, 24.9986), 89.3771, function(vehicle)
                    ESX.Game.SetVehicleProperties(vehicle, {
                        plate = "05LSPD" .. math.random(10, 99),
                        color2 = 112,
                        modLivery = 0,
                        modXenon = true,
                        modEngine = 2,
                        modBrakes = 3,
                        dirtLevel = 0,
                        fuelLevel = 100,
                        modSpoilers = 1,
                        modFrontBumper = 0,
                        modRearBumper = 0,
                        modSideSkirt = 0,
                        extras = {1, 4, 5, 10, 11},
                    })
                    lib.notify({
                        id = 'PoliceGarage',
                        title = 'Police Garage',
                        description = 'Your vehicle has been spawned!',
                        position = 'top-right',
                        icon = 'fa-solid fa-car',
                        iconColor = "#7393B3",
                        duration = 2500,
                    })
                end)
            end
        },
      {
        title = '🚓 Police Bravado STX',
        description = "High-speed vehicle for Sergeants and up!",
        onSelect = function()
          ESX.Game.SpawnVehicle('polbuffalo4', vector3(437.5544, -994.4741, 24.9995), 88.9421, function(vehicle)
            ESX.Game.SetVehicleProperties(vehicle, {
              plate = "04LSPD" ..math.random(10,99),
              color2 = 112,
              modLivery = 0,
              fuelLevel = 100,
              modXenon = true,
              modFrontBumper = 0,
              dirtLevel = 0,
              extras = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11},
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
        title = '🚓 Police Buffalo S',
        description = "Speedy sedan for officers!",
        onSelect = function()
          ESX.Game.SpawnVehicle('nkbuffalos', vector3(437.2692, -996.8796, 24.9984), 88.3752, function(vehicle)
            ESX.Game.SetVehicleProperties(vehicle, {
              plate = "03LSPD" ..math.random(10,99),
              color2 = 112,
              modLivery = 0,
              fuelLevel = 100,
              modFrontBumper = 0,
              modXenon = true,
              dirtLevel = 0,
              extras = {1},
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
        title = '🚓 Police Scout 2020',
        description = "Dependable SUV for law enforcement!",
        onSelect = function()
          ESX.Game.SpawnVehicle('nkscout2020', vector3(425.2960, -994.3598, 24.9975), 269.1217, function(vehicle)
            ESX.Game.SetVehicleProperties(vehicle, {
              plate = "02LSPD" ..math.random(10,99),
              color2 = 112,
              modLivery = 0,
              fuelLevel = 100,
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
        title = '🚓 Police Scout',
        description = "Reliable SUV tailored for lower ranks! ",
        onSelect = function()
          ESX.Game.SpawnVehicle('nkscout', vector3(425.3988, -991.5338, 25.0023), 269.4314, function(vehicle)
            ESX.Game.SetVehicleProperties(vehicle, {
              plate = "01LSPD" ..math.random(10,99),
              color2 = 112,
              modLivery = 0,
              fuelLevel = 100,
              modSpoilers = 1,
              modFrontBumper = 1,
              modXenon = true,
              dirtLevel = 0,
              extras = {1, 2, 3, 5, 10, 11},
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
  
  lib.registerContext({
    id = 'policegaragemetro',
    title = "🥷 Garage - Metro Vehicles",
    canClose = true,
    menu = "policegarage",
    options = {
      {
        title = '🥷 Brutus Bearcat',
        description = "Bulleproof and armored vehicle for special actions!",
        onSelect = function()
          ESX.Game.SpawnVehicle('centurion', vector3(449.4299, -1024.7496, 27.7941), 3.9808, function(vehicle)
            ESX.Game.SetVehicleProperties(vehicle, {
              color2 = 0,
              color1 = 0,
              dirtLevel = 0,
              fuelLevel = 100,
              modTransmission = 5,
              modArmor = 5,
              modXenon = true,
              plate = "",
              windowTint = 5,
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
        title = '🥷 Unmarked Bravado STX',
        description = "Fast and undercover vehicle for special actions!",
        onSelect = function()
          ESX.Game.SpawnVehicle('trubuffalo', vector3(445.6071, -991.5967, 25.2350), 270.3801, function(vehicle)
            ESX.Game.SetVehicleProperties(vehicle, {
              color2 = 0,
              color1 = 0,
              dirtLevel = 0,
              fuelLevel = 100,
              modTransmission = 5,
              modArmor = 5,
              modXenon = true,
              plate = "",
              windowTint = 5,
              extras = {1, 5},
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

  lib.registerContext({
    id = 'policegaragemotorcycles',
    title = "🏍️ Garage - Motorcycles",
    menu = "policegarage",
    options = {
      {
        title = '🏍️ Police Thrust',
        description = "Motorcycle designed for swift respond!",
        onSelect = function()
          ESX.Game.SpawnVehicle('polthrust', vector3(445.7713, -997.0205, 25.0498), 269.3835, function(vehicle)
            ESX.Game.SetVehicleProperties(vehicle, {
              plate = "10LSPD" ..math.random(10,99),
              modLivery = 0,
              dirtLevel = 0,
              fuelLevel = 100,
              modXenon = true,
            })
            lib.notify({
              id = 'PoliceGarage',
              title = 'Police Garage',
              description = 'Your motorcycle has been spawned!',
              position = 'top-right',
              icon = 'fa-solid fa-motorcycle',
              iconColor = "#7393B3",
            })
          end)
        end,
      },
  },
})

  lib.registerContext({
    id = 'policeheliport',
    title = "🚁 Garage - Heliport",
    options = {
      {
        title = '🚁 Police Maverick',
        description = "Police Helicopter designed for trained pilots!",
        onSelect = function()
          ESX.Game.SpawnVehicle('as350', vector3(449.3038, -981.0339, 44.0783), 269.1044, function(vehicle)
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