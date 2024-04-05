local policegaragezone = lib.zones.box({
  coords = vec3(458.7908, -995.9639, 25.6998),
  size = vec3(9, 8, 5),
  debug = false,
})
local isInZone = false
local garagebind = lib.addKeybind({
  name = 'LionGarageGarage',
  description = 'Bind to open the garage',
  defaultKey = 'E',
  onPressed = function()
      if isInZone then
          lib.showContext("policegarage")
      end
  end,
})
function policegaragezone:onEnter()
  isInZone = true
  if isInZone then
      lib.showTextUI('[E] - Otevřít policejní garáž')
  end
end
function policegaragezone:onExit()
  isInZone = false
  if not isInZone then
      lib.hideTextUI()
      garagebind:disable(true)
  end
end
function policegaragezone:inside(self)
  garagebind:disable(false)
end
