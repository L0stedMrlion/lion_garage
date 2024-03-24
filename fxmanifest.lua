fx_version 'cerulean'
game 'gta5'
lua54 "yes"

name "LionGarage"
author 'Mrlion'
description "Mrlion's FiveM script for garages"
version '1.0'

shared_script {
  "@es_extended/imports.lua",
  "@ox_lib/init.lua",
  "config.lua"
}

client_scripts {
  "client/vehicle-garage.lua",
  "client/heliport.lua",
}

server_scripts {
  "server/server.lua",
}