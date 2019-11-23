local base = "p-chatgame/"

p = p or {}
p.chatgame = {}

if ( SERVER ) then

    include( base .. "sh_config.lua" )
    include( base .. "sv_functions.lua" )
	include( base .. "sv_main.lua" )
	
elseif ( CLIENT ) then

	include( base .. "sh_config.lua" )
	include( base .. "cl_main.lua" )

end
