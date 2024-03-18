local bag = game:GetService("Players").LocalPlayer.PlayerGui.Inventory.Frame.InventoryRoot.RightPanel.InventoryGridContainer.InventoryGrid:GetChildren() 

for _,v in pairs(bag) do
  if v:IsA("ImageButton") then
    if v.NewLabel.Visible == true then
      local args = {
          [1] = {
              [1] = {
                  ["GUID"] = tostring(v),
                  ["Category"] = "Bindable"
              },
              [2] = "W"
          }
      }
      
      game:GetService("ReplicatedStorage"):WaitForChild("dataRemoteEvent"):FireServer(unpack(args))
      wait(1)
    end
  end
end
print("Done!")
