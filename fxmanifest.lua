fx_version 'cerulean'
game 'gta5'

author 'Luna Fox'
description 'lf-farming'
version '1.0'

shared_scripts {
	'config.lua',
	'@qb-core/shared/locale.lua',
	'locale/en.lua'
}

server_scripts {
	'server/main.lua'
}

client_script {
	'client/main.lua',
	'@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
}

escrow_ignore {
	'config.lua',
	'locale/*.lua',
	'README.MD'
}

lua54 'yes'
