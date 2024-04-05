local policeheliport = lib.zones.box({
    coords = vec3(460.1194, -982.7934, 43.6917),
    size = vec3(8, 5, 10),
    debug = false
  })
  local isInZone = false
  local garagebind = lib.addKeybind({
    name = 'LionGarageHeliport',
    description = 'Bind to open the garage',
    defaultKey = 'E',
    onPressed = function()
        if isInZone then
            lib.showContext("policeheliport")
        end
    end,
  })
  function policeheliport:onEnter()
    isInZone = true
    if isInZone then
      lib.showTextUI('[E] - Otevřít policejní heliport')
    end
  end
  
  function policeheliport:onExit()
    isInZone = false
    if not isInZone then
      lib.hideTextUI()
      garagebind:disable(true)
    end
  end

  function policeheliport:inside(self)
    garagebind:disable(false)
end