_G.HAZE_VERSION = "mjoi70sb"

if not game:IsLoaded() then
    game.Loaded:Wait()
end

local function fetchScript()
    local gameId = tostring(game.GameId)
    local version = _G.HAZE_VERSION
    local token = "d3e62dfed4ce4759fadbc2d66975dd97733bf98f7a414844bfca20e0e9d84a05"
    local url = "https://haze.wtf/api/script/" .. version .. "/" .. gameId .. "?token=" .. token

    print("��摱 Fetching script for game: " .. gameId)
    local response = game:HttpGet(url)
    loadstring(response)()
end

fetchScript()
