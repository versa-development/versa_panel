fx_version 'cerulean'
lua54 'yes'
use_experimental_fxv2_oal 'yes'
dependencies {
    '/onesync', -- requires state awareness to be enabled
}

name 'versa_panel'
author 'Versa Development'
version '0.1.0'
games { 'rdr3', 'gta5' }
description 'A Community Management System'

files {
    'modules/*.lua',
    'utils/*.lua',
}

shared_scripts {
    '@ox_lib/init.lua',
}

client_scripts {
    'runtime/init.lua',
    'runtime/**/client.lua',
}

server_scripts {
    'config.lua',
    'runtime/init.lua',
    'runtime/**/server.lua',
}
