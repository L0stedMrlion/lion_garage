fx_version 'cerulean'
game 'gta5'
lua54 "yes"

name "LionGarage"
author 'Mrlion'
description "Mrlion's FiveM script for garages"
repository "https://github.com/L0stedMrlion/LionGarage"
version '1.4'

shared_script {
  "@ox_lib/init.lua"
}

server_scripts { 
  "server/*"
}

client_scripts {
  "client/*",
}