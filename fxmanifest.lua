fx_version 'cerulean'
game 'gta5'

author 'Kap'
description 'Weapon Shake using ox_lib cache'

-- Use shared_scripts (plural) for best practice
shared_scripts {
    '@ox_lib/init.lua',
    'config.lua'
}

client_script 'client.lua'