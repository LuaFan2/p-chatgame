net.Receive("p-chatgame.Message", function()
    local msg = net.ReadString()
    
    chat.AddText(p.chatgame.config.chatcolor, "The math exercise | " .. msg)
end)

net.Receive("p-chatgame.Notify", function()
    local msg = net.ReadString()
    
    notification.AddLegacy(msg, 1, 4)
end)