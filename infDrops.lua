local count = 0

--local drop = game:GetService("Workspace").ActiveDrops:GetChildren()
drop2 = game:GetService("Workspace").ActiveDrops:FindFirstChildWhichIsA("Model")



repeat
  count = count + 1
  local args = {
    [1] = {
        [1] = tostring(drop2.Name),
        [2] = "!"
      }
  }

  game:GetService("ReplicatedStorage"):WaitForChild("dataRemoteEvent"):FireServer(unpack(args))
until(count >= Value)



--[[
local count = 0

local drop = game:GetService("Workspace").ActiveDrops:GetDescendants()
local drop2 = game:GetService("Workspace").ActiveDrops:FindFirstChildWhichIsA("Model")

for _,v in pairs(drop) do
  if string.find(v.Name, "Cube") then
    warn ("Christmas Coins!")
    repeat
      count = count + 1
      local args = {
        [1] = {
            [1] = tostring(drop2.Name),
            [2] = "\28"
          }
      }
    
      game:GetService("ReplicatedStorage"):WaitForChild("dataRemoteEvent"):FireServer(unpack(args))
    until(count >= 200000)
  else
    warn(drop2.Name)
  end
end
]]--
