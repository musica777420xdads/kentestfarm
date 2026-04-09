queue_on_teleport([[
    repeat task.wait() until game:IsLoaded()

    local urls = {
        "https://raw.githubusercontent.com/musica777420xdads/kentestfarm/refs/heads/main/kentest.luau",
        "https://raw.githubusercontent.com/musica777420xdads/kentestfarm/refs/heads/main/kentest2.luau"
    }

    for _, url in ipairs(urls) do
        pcall(function()
            loadstring(game:HttpGet(url))()
        end)
    end
]])
