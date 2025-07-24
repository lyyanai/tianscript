local Games = {
    [7265785337] = "穷小子打工记",
    [7008097940] = "墨水游戏",
    [1512676568] = "河北唐县",
    [873703865] = "一路向西",
    [7018190066] = "死铁轨"
}

local cloneref = cloneref or function(a) return a end
local CoreGui = cloneref(game:GetService("CoreGui"))

if not ({...})[1] then
    local name = Games[game.GameId]
    if name then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/lyyanai/tianscript/refs/heads/main/Games/"..(name)..".lua"))()
    else
        local message = Instance.new("Message", CoreGui)
        message.Text = "此游戏不受支持"
        task.wait(2)
        message:destroy()
    end
end

return Games
