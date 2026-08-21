local HttpService = game:GetService("HttpService")
local user = game.Players.LocalPlayer.Name

local function check()
    local req = syn.request or request or http_request
    local res = req({
        Url = "http://localhost:3000/redeem",
        Method = "POST",
        Headers = {["Content-Type"] = "application/json"},
        Body = HttpService:JSONEncode({key = script_key, hwid = "N/A", username = user})
    })
    
    if res then
        return HttpService:JSONDecode(res.Body)
    end
end

local data = check()

if data and data.status == "success" then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/assthruster3000/DogshitFling/refs/heads/main/DogshitCarFling"))()
else
    game.Players.LocalPlayer:Kick(data and data.message or "Invalid Key")
end
