p.chatgame.config = {
    interval = 10,
    
    chatcolor = Color(255,0,0),
    
    examples = {
        "2 + 2",
        "2 * 2",
        "2 / 2"
    }
}

if SERVER then
    p.chatgame.config.prize = function(ply)
        if DarkRP then
            ply:addMoney(100)
            DarkRP.notify(ply, 0, 4, "You have successfully solved a mathematical exercise")
            return
        end
        p.chatgame.Notify("You have successfully solved a mathematical exercise", ply)
    end
end