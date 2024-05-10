exports.ox_target:addBoxZone({
    coords = vec3(461.6189, -996.7315, 26.3112),
    options = {
        {
            icon = 'fa-solid fa-warehouse',
            distance = 2.0,
            groups = {
                police = 0
              },
            label = "Open Garage",
            onSelect = function(data)
                lib.showContext('policegarage')
            end
        }
    }
})

exports.ox_target:addBoxZone({
    coords = vec3(461.6189, -996.7315, 26.3112),
    options = {
        {
            icon = 'fa-solid fa-square-parking',
            groups = {
                police = 0
            },
            distance = 2.0,
            label = "Park Nearest Vehicle",
            onSelect = function(data)
                local playerCoords = GetEntityCoords(GetPlayerPed(-1))
                local closestVehicle = ESX.Game.GetClosestVehicle(playerCoords)
                if closestVehicle then
                    local vehicleModel = GetEntityModel(closestVehicle)
                    local allowedModels = {"polbuffalo4", "nkscout", "nkscout2020", "nkcoquette", "nkbuffalos", "centurion", "polthrust", "policeb", "trubuffalo"}
                    if IsModelInList(vehicleModel, allowedModels) then
                        ESX.Game.DeleteVehicle(closestVehicle)
                    else
                        lib.notify({
                            id = 'PoliceGarage',
                            title = 'Police Garage',
                            description = 'Vehicle is not nearby or its not Police Vehicle!',
                            position = 'top-right',
                            icon = 'fa-solid fa-car',
                            iconColor = "#7393B3",
                            duration = 2500,
                        })
                    end
                else
                    lib.notify({
                        id = 'PoliceGarage',
                        title = 'Police Garage',
                        description = 'Vehicle is not nearby or its not Police Vehicle!',
                        position = 'top-right',
                        icon = 'fa-solid fa-car',
                        iconColor = "#7393B3",
                        duration = 2500,
                    })
                end
            end
        }
    }
})

function IsModelInList(model, list)
    for _, v in ipairs(list) do
        if GetHashKey(v) == model then
            return true
        end
    end
    return false
end


exports.ox_target:addBoxZone({
    coords = vec3(460.2114, -979.6323, 44.6128),
    options = {
        {
            icon = 'fa-solid fa-helicopter',
            groups = {
                police = 0
              },
            distance = 2.0,
            label = "Open Heliport",
            onSelect = function(data)
                lib.showContext('policeheliport')
            end
        }
    }
})

exports.ox_target:addBoxZone({
    coords = vec3(460.2114, -979.6323, 44.6128),
    options = {
        {
            icon = 'fa-solid fa-square-parking',
            distance = 2.0,
            groups = {
                police = 0
              },
            label = "Park Helicoper",
            onSelect = function(data)
                local targetModel = "as350" 
                local coords = vec3(449.1948, -981.0526, 43.6914)
                local closestVehicle = ESX.Game.GetClosestVehicle(coords)
                if closestVehicle then
                  local closestModel = GetEntityModel(closestVehicle)
                  if GetHashKey(targetModel) == closestModel then
                    ESX.Game.DeleteVehicle(closestVehicle)
                    lib.notify({
                        title = 'Police Heliport',
                        description = 'Helicoper was successfully parked!',
                        duration = 1500,
                        position = 'top-right',
                        icon = 'fa-solid fa-helicopter',
                        iconColor = "#7393B3",
                      })
                  else
                    lib.notify({
                        title = 'Police Heliport',
                        description = 'No helicopter nearby!',
                        duration = 1500,
                        position = 'top-right',
                        icon = 'fa-solid fa-helicopter',
                        iconColor = "#7393B3",
                      })
                  end
                end
              end
        }
    }
})