local cur, mtimer

if not mtimer then
    timer.Create( "timer_pmath", p.chatgame.config.interval, 0, function()
        cur = p.chatgame.config.examples[math.random(#p.chatgame.config.examples)]
    
        p.chatgame.ChatBroadcast(cur)
    
        mtimer = true
    end) 
end

hook.Add("PlayerSay", "p-chatgame.PlayerSay", function ( ply, text )
    -- self.BaseClass:PlayerSay( ply, text )
    if !cur then return end
    if !string.match( text, "^[0-9]+$") then return end
    
    local func = CompileString("if " .. cur .. " == " .. text .. " then return true end", "mop", false)
    if func() then p.chatgame.config.prize(ply) return false end
    
    cur = nil
    
    return text
end)