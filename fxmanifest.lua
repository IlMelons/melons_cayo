fx_version "cerulean"
game "gta5"
lua54 "yes"

name "melons_cayo"
description "Cayo Perico script"
author "IlMelons"
version "1.0.1"
repository "https://github.com/IlMelons/melons_cayo"

this_is_a_map "yes"

shared_scripts {
    "@ox_lib/init.lua",
}

client_scripts {
    "client/*.lua",
}

server_scripts {
    "server/*.lua",
}

files {
    "data/*.lua",
}
