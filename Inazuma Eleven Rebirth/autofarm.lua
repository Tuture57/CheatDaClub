wait(5)
while true do
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(792.64502, 286.198547, -264.139801, 0.498693228, 4.08423162e-08, -0.866778553, -1.15970176e-08, 1, 4.04474285e-08, 0.866778553, -1.01188125e-08, 0.498693228)
    wait(1)
    fireproximityprompt(game:GetService("Workspace").IceCreamGuy.ExpMoneyQuest.ProximityPrompt)
    wait(0.1)
    game:GetService("Players").LocalPlayer.PlayerGui.MoneyAndEXPQuest.MainFrame.Frame.Agree.Visible = true
    wait(30)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-947.316956, 256.842102, 85.2098312, 0.980475366, 1.1222915e-08, -0.196642071, -3.05220631e-08, 1, -9.51130019e-08, 0.196642071, 9.92578748e-08, 0.980475366)
    wait(1)
end
