fx_version 'cerulean'
game 'gta5'
lua54 "yes"

name "LionGarage"
author 'Mrlion'
description "Mrlion's FiveM script for garages"
repository "https://github.com/L0stedMrlion/LionGarage"
version '1.3'

shared_script {
  "@es_extended/imports.lua",
  "@ox_lib/init.lua",
  "shared/policegarage-zone.lua",
  "shared/policeheliport-zone.lua",
  "shared/deleting-zone.lua"
}

client_scripts {
  "client/policeheliport.lua",
  "client/policegarage.lua",
}