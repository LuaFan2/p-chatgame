util.AddNetworkString 'p-chatgame.Message'
util.AddNetworkString 'p-chatgame.Notify'

function p.chatgame.ChatBroadcast(msg)
    net.Start("p-chatgame.Message")
    net.WriteString(msg)
    net.Broadcast()
end

function p.chatgame.Notify(msg, ply)
    net.Start("p-chatgame.Notify")
    net.WriteString(msg)
    net.Send(ply)
end