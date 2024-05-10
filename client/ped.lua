Citizen.CreateThread(function ()
    local model = GetHashKey("s_m_y_cop_01")
    RequestModel(model)
    while not HasModelLoaded(model) do
        Wait(0)
    end
    local Ped = CreatePed(2, model, 461.9470, -996.7962, 24.66, 59.4815, false, true)
    FreezeEntityPosition(Ped, true)
    TaskStartScenarioInPlace(Ped, "WORLD_HUMAN_COP_IDLES", 0, false)
    SetEntityInvincible(Ped, true)
    SetBlockingOfNonTemporaryEvents(Ped, true)
end)

Citizen.CreateThread(function ()
    local model = GetHashKey("s_m_m_pilot_02")
    RequestModel(model)
    while not HasModelLoaded(model) do
        Wait(0)
    end
    local Ped = CreatePed(2, model, 460.2913, -979.5166, 42.6916, 179.9127, false, true)
    FreezeEntityPosition(Ped, true)
    TaskStartScenarioInPlace(Ped, "WORLD_HUMAN_COP_IDLES", 0, false)
    SetEntityInvincible(Ped, true)
    SetBlockingOfNonTemporaryEvents(Ped, true)
end)

