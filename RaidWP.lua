_G.Raid = true

wait(10)
            game.Players.LocalPlayer.Character.Head.Overhead.PlayerName:Destroy()
        
    game.Players.LocalPlayer.PlayerGui.MainUI.HUD.Playername:Destroy()



local args = {
    [1] = "Haki"
}

game:GetService("Players").LocalPlayer.Backpack.Haki.Haki:FireServer(unpack(args))


    local placeId = game.PlaceId
	if placeId == 9487450292 then
		First = true
	elseif placeId == 9609355203 then
		Raid = true
	end
	
    spawn(function()
       game:GetService("RunService").RenderStepped:Connect(function()
        pcall(function()
            if _G.Raid then
                if First then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(34.6641273, 95.6252594, 726.025513, 0.485765338, -2.5060026e-06, 0.874089241, -0.000205610399, 1, 0.000117132731, -0.874089241, -0.000236620966, 0.485765338)
end
            end
        end)
       end)
    end)
    
    spawn(function()
       game:GetService("RunService").RenderStepped:Connect(function()
        pcall(function()
            if _G.Raid then
                if Raid then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6.69188023, 200.026367, -14.0853148, -0.981415331, -0.19189553, 2.52705613e-05, -2.32650541e-06, 0.000143587633, 1, -0.191895545, 0.981415331, -0.000141365555)
end
            end
        end)
       end)
    end)
    
    spawn(function()
        game:GetService("RunService").Heartbeat:Connect(function()
            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") and _G.Raid then
                setfflag("HumanoidParallelRemoveNoPhysics", "False")
                setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
                game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
            end
        end)
    end)

        spawn(function()
       game:GetService("RunService").RenderStepped:Connect(function()
        pcall(function()
            if _G.Raid then
game:GetService("Players").LocalPlayer.Character[_G.Weapon].Client.Combat:FireServer()
            end
        end)
       end)
        end)
        
            spawn(function()
       game:GetService("RunService").RenderStepped:Connect(function()
        pcall(function()
            if _G.Raid then
                wait(1)
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(_G.Weapon))
            end
        end)
       end)
    end)

if _G.FastMode then
loadstring(game:HttpGet('https://raw.githubusercontent.com/xlostpexz/FPSBoost/main/FPSBoost', true))()
end
