local key = script_key
local HttpService = game:GetService("HttpService")
local user = game.Players.LocalPlayer.Name

local req = syn.request or request or http_request
local res = req({
    Url = "https://whitelistbackend.onrender.com/redeem",
    Method = "POST",
    Headers = {["Content-Type"] = "application/json"},
    Body = HttpService:JSONEncode({key = key, hwid = "N/A", username = user})
})

if res and res.StatusCode == 200 then
    local data = HttpService:JSONDecode(res.Body)
    if data.status == "success" then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/assthruster3000/DogshitFling/refs/heads/main/DogshitCarFling"))()
    else
        game.Players.LocalPlayer:Kick(data.message or "Invalid Key")
    end
else
    warn("Server is down or asleep!")
end
