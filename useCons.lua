local bag = game:GetService("Players").LocalPlayer.PlayerGui.Inventory.Frame.InventoryRoot.RightPanel.InventoryGridContainer.InventoryGrid:GetChildren()

for _,bag in bag do
  local args = {
      [1] = {
          [1] = {
              ["GUID"] = tostring(bag.Name),
              ["Data"] = {
                  ["Equipped"] = true
              },
              ["Category"] = "Consumable"
          },
          [2] = "Y"
      }
  }
  wait(0.2)
  game:GetService("ReplicatedStorage"):WaitForChild("dataRemoteEvent"):FireServer(unpack(args))
end
