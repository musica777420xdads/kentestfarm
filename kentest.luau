repeat task.wait() until game:IsLoaded() and game:GetService("Players") and game.Players.LocalPlayer and game.Players.LocalPlayer:FindFirstChild("PlayerGui")

if game.PlaceId == 2753915549 then
    repeat task.wait() until game:IsLoaded() and game:GetService("Players") and game.Players.LocalPlayer and game.Players.LocalPlayer:FindFirstChild("PlayerGui")

    local Players = game:GetService("Players")
    local lp = Players.LocalPlayer

    local function joinpirates()
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("SetTeam", "Pirates")
        task.wait(0.1)
    end

    for i = 1, 10 do
        joinpirates()
    end

    local char = lp.Character or lp.CharacterAdded:Wait()
    local PlaceId = game.PlaceId
    local TeleportService = game:GetService("TeleportService")
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local ServerBrowserRemote = ReplicatedStorage:WaitForChild("__ServerBrowser")

    repeat task.wait() until char:FindFirstChild("HumanoidRootPart")

    local hrp = char.HumanoidRootPart

    local function ServerHop()
        local args = {
            "TravelDressrosa"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
        print("hop")
        task.wait(0.1)
    end

    local function teleport()
        hrp.CFrame = CFrame.new(961, 17, 1563)
    end

    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommE"):FireServer("Ken", true)

    repeat teleport() task.wait(0.1) until workspace.Enemies:FindFirstChild("Bandit")

    if lp:GetAttribute("KenActive") == true then
        for _, v in pairs(workspace.Enemies:GetDescendants()) do
            if lp:GetAttribute("KenActive") == true then
                task.wait(0.1)
                if v.Name == "Bandit" then
                    hrp.CFrame = CFrame.new(v.HumanoidRootPart.Position)
                end
                print("YES KEN")
            elseif lp:GetAttribute("KenActive") == false then
                print("NO KEN")
                task.spawn(function()
                    while wait(1) do 
                        ServerHop()
                    end
                end)
            end
        end
    end
elseif game.PlaceId == 4442272183 then
    repeat task.wait() until game:IsLoaded() and game:GetService("Players") and game.Players.LocalPlayer and game.Players.LocalPlayer:FindFirstChild("PlayerGui")

    local Players = game:GetService("Players")
    local lp = Players.LocalPlayer

    local function joinpirates()
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("SetTeam", "Pirates")
        task.wait(0.1)
    end

    for i = 1, 10 do
        joinpirates()
    end

    local char = lp.Character or lp.CharacterAdded:Wait()
    local PlaceId = game.PlaceId
    local TeleportService = game:GetService("TeleportService")
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local ServerBrowserRemote = ReplicatedStorage:WaitForChild("__ServerBrowser")

    repeat task.wait() until char:FindFirstChild("HumanoidRootPart")

    local hrp = char.HumanoidRootPart

    local function ServerHop()
        while wait(0.1) do
            local args = {
                "TravelMain"
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
            print("hop")
            task.wait(0.1)
        end
    end


    local function teleport()
        hrp.CFrame = CFrame.new(175, 39, 2590)
    end

    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommE"):FireServer("Ken", true)

    repeat teleport() task.wait(0.1) until workspace.Enemies:FindFirstChild("Raider")

    if lp:GetAttribute("KenActive") == true then
        for _, v in pairs(workspace.Enemies:GetDescendants()) do
            if lp:GetAttribute("KenActive") == true then
                task.wait(0.1)
                if v.Name == "Raider" then
                    hrp.CFrame = CFrame.new(v.HumanoidRootPart.Position)
                end
                print("YES KEN")
            elseif lp:GetAttribute("KenActive") == false then
                print("NO KEN")
                task.spawn(function()
                    while wait(1) do 
                        ServerHop()
                    end
                end)
            end
        end
    end
end
