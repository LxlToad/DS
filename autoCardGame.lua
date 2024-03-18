function cardGame()
    local args = {
        [1] = {
            [1] = {
                ["MinigameID"] = "CardGame",
                ["Payload"] = {
                    ["Method"] = "Start"
                }
            },
            [2] = "\3",
            [3] = false,
            [4] = "\31",
            [5] = false,
            [6] = "4"
        }
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("dataRemoteEvent"):FireServer(unpack(args))
    wait(5)
    for i = 1, 18 do
        local args = {
            [1] = {
                [1] = {
                    ["MinigameID"] = "CardGame",
                    ["Payload"] = {
                        ["Method"] = "Flip",
                        ["Selected"] = i
                    }
                },
                [2] = "\3"
            }
        }

        game:GetService("ReplicatedStorage"):WaitForChild("dataRemoteEvent"):FireServer(unpack(args))
        wait(1)
    end

    local cards = workspace.Camera:GetChildren()
    local count = 0
    for _,v in pairs(cards) do
        if v:isA("MeshPart") then
            if v.SurfaceGui.Frame.TextLabel.Text == "250 GP" or v.SurfaceGui.Frame.TextLabel.Text == "100 GP" then
                local args = {
                    [1] = {
                        [1] = {
                            ["MinigameID"] = "CardGame",
                            ["Payload"] = {
                                ["Method"] = "Flip",
                                ["Selected"] = tonumber(v.Name)
                            }
                        },
                        [2] = "\3"
                    }
                }
                game:GetService("ReplicatedStorage"):WaitForChild("dataRemoteEvent"):FireServer(unpack(args))
                count = count+1         
                wait(1)
            end
        end
    end
    if count < 2 then
        local args = {
            [1] = {
                [1] = {
                    ["MinigameID"] = "CardGame",
                    ["Payload"] = {
                        ["Method"] = "Flip",
                        ["Selected"] = 19
                    }
                },
                [2] = "\3"
            }
        }
        game:GetService("ReplicatedStorage"):WaitForChild("dataRemoteEvent"):FireServer(unpack(args))
        wait(1)
        local args = {
            [1] = {
                [1] = {
                    ["MinigameID"] = "CardGame",
                    ["Payload"] = {
                        ["Method"] = "Flip",
                        ["Selected"] = 20
                    }
                },
                [2] = "\3"
            }
        }
        game:GetService("ReplicatedStorage"):WaitForChild("dataRemoteEvent"):FireServer(unpack(args))
    end
    wait(8)
end

while true do
    local success, errorMessage = pcall(cardGame)
    if success then
        print("Finished!")
    else
        print("Function call failed with error: " .. errorMessage)
    end
end
