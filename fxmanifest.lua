fx_version "cerulean"
game { "gta5" }

author 'HitzefreiTV'
description 'AFK Kick Script by HitzefreiTV'
version '1.0.0'

lua54 'yes'

server_scripts {
	'server/server.lua'
}

client_scripts {
	'client/client.lua',
	'config.lua'
}

shared_scripts {
	'@es_extended/imports.lua',
}
