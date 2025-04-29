--FE BIRD
--Made by rouxhaver | Modified and repaired by Hugo

----CONTROLS-----------------------------------
--W, A, S, D, Q, E - to move around and up/down
--CONTROL - to sprint
--X - to poop a small bird out
-------------------------------------------------

--Required Hats:
----[FREE]----
--https://www.roblox.com/catalog/2956239660/Belle-Of-Belfast-Long-Red-Hair
--https://www.roblox.com/catalog/301818806/Serenas-Hair
--https://www.roblox.com/catalog/62724852/Chestnut-Bun
--https://www.roblox.com/catalog/3302593407/Rodans-Head
--https://www.roblox.com/catalog/253151806/The-Bird-Says

----[PAID]   PRICE 555R$----
--https://www.roblox.com/catalog/15301922285/Seagull-Head
--https://www.roblox.com/catalog/17179460188/Paper-Mache-Poop
--https://www.roblox.com/catalog/5677350668/The-Right-Holy-Wing
--https://www.roblox.com/catalog/5677348945/The-Left-Holy-Wing
--https://www.roblox.com/catalog/12331913497/Faceless-Head-White
--Version: 1.7

----------[SETTINGS]---------
if RanAsLoadstring == nil then	
	PoopTime = 5			--The time in seconds how long the poop stays on the ground
	NormalSpeed = 0.7		--Set to the normal flying speed
	SprintSpeed = 2			--Set to the speed when you are sprinting
end
------------[END]------------

task.wait(0.20)

if not replicatesignal then
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Reanimation Failed",
        Text = "Your executor does not support permadeath :(",
        Duration = 3
    })
    return
else
	print("Bird FE loaded | Version 1.7")
		game:GetService("StarterGui"):SetCore("SendNotification",{
			Title = "Bird FE",
			Text = "Created by Rouxhaver and modified by Hugo",
			Duration = 2
		})
end

local fart = Instance.new("Sound")
fart.SoundId = "rbxassetid://8152780685"
fart.Parent = workspace
fart.Volume = 0.8


----------------------------------
--------Assign Functions----------
----------------------------------
function respawn(plr)
    replicatesignal(plr.ConnectDiedSignalBackend)
    task.wait(game.Players.RespawnTime - 0.165)
    local char = plr.Character
    local hum = char:FindFirstChildWhichIsA("Humanoid")
    if hum then hum:ChangeState(Enum.HumanoidStateType.Dead) end
    if not replicatesignal then wait() end
    char:ClearAllChildren()
    local newChar = Instance.new("Model")
    newChar.Parent = workspace
    plr.Character = newChar
    wait()
    plr.Character = char
    newChar:Destroy()
end

local function disableCollision(partA, partB)
	local ncc = Instance.new("NoCollisionConstraint")
	ncc.Part0 = partA
	ncc.Part1 = partB
	ncc.Parent = partA
end

---WRAPPING---
local movementConnection
local simRadiusConnection
local moveLoopRunning = false
local flapCoroutine = nil
------END-----

function reanimate()

if simRadiusConnection then simRadiusConnection:Disconnect() end
if movementConnection then movementConnection:Disconnect() end
moveLoopRunning = false
task.wait()

if poop and poop:IsA("BasePart") then
	poop:Destroy()
end

---ASSIGN---
lp = game:GetService("Players").LocalPlayer
char = lp.Character
moving = false
lastcam = workspace.CurrentCamera.CFrame.Rotation

lp.Character = nil
lp.Character = char

bob_offset = 0
bob_change = 0.02
pooped = false
shiftlock = false

wing_angle = 0
wa_change = 5 --Wing Flap Speed
-----END-----



	simRadiusConnection = game:FindFirstChildOfClass("RunService").Heartbeat:Connect(function()
    	game.Players.LocalPlayer.SimulationRadius = 10000
	end)

	replicatesignal(lp.ConnectDiedSignalBackend)
    wait(game.Players.RespawnTime + 0.165)
	char.Humanoid.Health = 0

	local camera = workspace.CurrentCamera
	local UserInputService = game:GetService("UserInputService")

	local Center = Instance.new("Part",workspace)
	Center.Anchored = true
	Center.Transparency = 1

	current_position = game:GetService("Players").LocalPlayer.Character:WaitForChild("Head").Position + Vector3.new(0,1,0)

	camera.CameraSubject = Center

	speed = 0

	moveLoopRunning = true
	coroutine.wrap(function()
		while moveLoopRunning do
			task.wait()
			if UserInputService:IsKeyDown(Enum.KeyCode.D) then
				current_position += camera.CFrame.RightVector * speed
				moving=true
			end
			if UserInputService:IsKeyDown(Enum.KeyCode.A) then
				current_position += camera.CFrame.RightVector * -speed
				moving=true
			end
			if UserInputService:IsKeyDown(Enum.KeyCode.W) then
				current_position += camera.CFrame.LookVector * speed
				moving=true
			end
			if UserInputService:IsKeyDown(Enum.KeyCode.S) then
				current_position += camera.CFrame.LookVector * -speed
				moving=true
			end
			if UserInputService:IsKeyDown(Enum.KeyCode.E) then
				current_position += camera.CFrame.UpVector * speed
				moving=true
			end
			if UserInputService:IsKeyDown(Enum.KeyCode.Q) then
				current_position += camera.CFrame.UpVector * -speed
				moving=true
			end
			if not (UserInputService:IsKeyDown(Enum.KeyCode.D) or UserInputService:IsKeyDown(Enum.KeyCode.A) or UserInputService:IsKeyDown(Enum.KeyCode.W) or UserInputService:IsKeyDown(Enum.KeyCode.S) or UserInputService:IsKeyDown(Enum.KeyCode.Q) or UserInputService:IsKeyDown(Enum.KeyCode.E)) then
				moving=false
			end
			if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then do
				speed = SprintSpeed
			end else
			speed = NormalSpeed
			end
			Center.Position = current_position

			
			UserInputService:GetPropertyChangedSignal("MouseBehavior"):Connect(function()
    			if UserInputService.MouseBehavior == Enum.MouseBehavior.LockCenter then
        			shiftlock = true
    			else
					shiftlock = false
				end
			end)
		end
	end)()



	body = Instance.new("Part",workspace)
	body.Size = Vector3.new(1,1,1)
	body.Anchored = true
	body.Transparency = 1

	head = Instance.new("Part",workspace)
	head.Size = Vector3.new(1,1,1)
	head.Anchored = true
	head.Transparency = 1

	lwing = Instance.new("Part",workspace)
	lwing.Size = Vector3.new(1,1,1)
	lwing.PivotOffset = CFrame.new(2,0,0)
	lwing.Anchored = true
	lwing.Transparency = 1

	rwing = Instance.new("Part",workspace)
	rwing.Size = Vector3.new(1,1,1)
	rwing.PivotOffset = CFrame.new(-2,0,0)
	rwing.Anchored = true
	rwing.Transparency = 1

	poop = Instance.new("Part",workspace)
	poop.Size = Vector3.new(1,1,1)
	poop.Position = char.Head.Position
	poop.Anchored = true
	poop.Transparency = 1

	disableCollision(poop, body)
	disableCollision(poop, head)
	disableCollision(poop, rwing)
	disableCollision(poop, lwing)

	coroutine.wrap(function()
		while moveLoopRunning do
		task.wait()
			if bob_offset > 0 then
				bob_change = -bob_change
			end
			if bob_offset < -1.5 then
				bob_change = -bob_change
			end
			if moving == false then
				bob_offset += bob_change
			end
			if wing_angle >= 30 then
				wa_change = -wa_change
			end
			if wing_angle <= -30 then
				wa_change = -wa_change
			end
		if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
		wing_angle += wa_change*2
		else
		wing_angle += wa_change
		end

		if shiftlock == true then
			lastcam = camera.CFrame.Rotation
		else
			if moving == true then
				lastcam = camera.CFrame.Rotation
			end
		end

			if pooped == false then
				poop.CFrame = (Center.CFrame + Vector3.new(0,bob_offset,0))
				poop.Anchored = true
			end
			body.CFrame = (Center.CFrame + Vector3.new(0,bob_offset,0)) * lastcam
			head.CFrame = body.CFrame + body.CFrame.LookVector * 1.25
			lwing:PivotTo(body.CFrame * CFrame.Angles(0,0,math.rad(wing_angle)))
			rwing:PivotTo(body.CFrame * CFrame.Angles(0,0,math.rad(-wing_angle)))

			if UserInputService:IsKeyDown(Enum.KeyCode.X) and not pooped then
				pooped = true
				poop.Anchored = false
				fart:Play()
				task.delay(PoopTime, function()
					pooped = false
				end)
			end
		end
end)()

	function Move(part, cframe)
		if not part then return end
		part.Velocity = Vector3.new(0,30,0)
		local tween = game:GetService("TweenService"):Create(part, TweenInfo.new(0), {CFrame = cframe})
		tween:Play()
	end


function checkHats(hatname)
	for _, child in ipairs(char:GetChildren()) do
		if child:IsA("Accessory") and child.Name == hatname then
			return child:FindFirstChild("Handle")
		end
	end
	return nil
end


		--FREE HATS--
		vbody = checkHats("Kate Hair")
		vhead = checkHats("RoHead")
		vlwing = checkHats("LongRedHair")
		vrwing = checkHats("LongHairBeanie")
		vpoop = checkHats("TwitterBird")
		--PAID HATS--
		nbody = checkHats("Faceless Head")
		nhead = checkHats("Accessory (SeagullHeadd)")
		nlwing = checkHats("HolyWing")
		nrwing = checkHats("HolyWing2")
		npoop = checkHats("Accessory (MeshPartAccessory)")



	rightWingOffset = CFrame.new(0.35, 0, -1)
	leftWingOffset = CFrame.new(-0.35, 0, -1)
	wingRotation = CFrame.Angles(math.rad(100), 0, math.rad(180))

	while moveLoopRunning do
		task.wait()
		--FREE--
		Move(vpoop, poop.CFrame)
		Move(vbody, body.CFrame)
		Move(vhead, head.CFrame)
		Move(vrwing, (rwing.CFrame- rwing.CFrame.RightVector * .3) * CFrame.Angles(math.rad(90),0,math.rad(90)))
		Move(vlwing, (lwing.CFrame - lwing.CFrame.RightVector * -.3) * CFrame.Angles(math.rad(-90),0,math.rad(-90)))
		--PAID--
		Move(npoop, poop.CFrame)
		Move(nbody, body.CFrame * CFrame.Angles(math.rad(90),0,math.rad(0)))
		Move(nhead, (head.CFrame) * CFrame.Angles(math.rad(180),0,math.rad(-180)))
		Move(nrwing, rwing.CFrame * rightWingOffset * wingRotation)
		Move(nlwing, lwing.CFrame * leftWingOffset * wingRotation)
	end
end


--GUI--

local bird_gui = Instance.new("ScreenGui")
local main_background = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local main = Instance.new("Frame")
local text = Instance.new("Folder")
local Line = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local buttons = Instance.new("Folder")
local reanimate_button = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local x_button = Instance.new("ImageButton")
local UICorner_3 = Instance.new("UICorner")
local ImageLabel = Instance.new("ImageLabel")
local respawn_button = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local UICorner_5 = Instance.new("UICorner")

--Properties:

bird_gui.Name = "bird_gui"
bird_gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
bird_gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
bird_gui.ResetOnSpawn = false

main_background.Name = "main_background"
main_background.Parent = bird_gui
main_background.Active = true
main_background.BackgroundColor3 = Color3.fromRGB(140, 173, 177)
main_background.BorderColor3 = Color3.fromRGB(0, 0, 0)
main_background.BorderSizePixel = 0
main_background.Position = UDim2.new(0.754887223, 0, 0.592105269, 0)
main_background.Size = UDim2.new(0, 275, 0, 205)
main_background.ZIndex = -1

UICorner.CornerRadius = UDim.new(0, 15)
UICorner.Parent = main_background

main.Name = "main"
main.Parent = main_background
main.Active = true
main.BackgroundColor3 = Color3.fromRGB(150, 184, 189)
main.BorderColor3 = Color3.fromRGB(0, 0, 0)
main.BorderSizePixel = 0
main.Position = UDim2.new(0.0212167073, 0, 0.0248687007, 0)
main.Size = UDim2.new(0, 263, 0, 193)

text.Name = "text"
text.Parent = main

Line.Name = "Line"
Line.Parent = text
Line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Line.BackgroundTransparency = 0.500
Line.BorderColor3 = Color3.fromRGB(0, 0, 0)
Line.BorderSizePixel = 0
Line.Position = UDim2.new(0.131500006, 0, 0.268817216, 0)
Line.Size = UDim2.new(0, 190, 0, 2)

TextLabel.Parent = text
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 263, 0, 50)
TextLabel.Font = Enum.Font.DenkOne
TextLabel.Text = "Bird"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 55.000
TextLabel.TextStrokeColor3 = Color3.fromRGB(135, 167, 171)
TextLabel.TextStrokeTransparency = 0.000
TextLabel.TextWrapped = true

TextLabel_2.Parent = text
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.657794654, 0, 0.112903222, 0)
TextLabel_2.Size = UDim2.new(0, 29, 0, 29)
TextLabel_2.Font = Enum.Font.DenkOne
TextLabel_2.Text = "FE"
TextLabel_2.TextColor3 = Color3.fromRGB(231, 231, 231)
TextLabel_2.TextSize = 25.000
TextLabel_2.TextStrokeColor3 = Color3.fromRGB(116, 144, 147)
TextLabel_2.TextStrokeTransparency = 0.000
TextLabel_2.TextWrapped = true

buttons.Name = "buttons"
buttons.Parent = main

reanimate_button.Name = "reanimate_button"
reanimate_button.Parent = buttons
reanimate_button.BackgroundColor3 = Color3.fromRGB(139, 180, 202)
reanimate_button.BorderColor3 = Color3.fromRGB(0, 0, 0)
reanimate_button.Position = UDim2.new(0.135302171, 0, 0.365591407, 0)
reanimate_button.Selectable = false
reanimate_button.Size = UDim2.new(0, 190, 0, 50)
reanimate_button.Font = Enum.Font.DenkOne
reanimate_button.Text = "Reanimate"
reanimate_button.TextColor3 = Color3.fromRGB(255, 255, 255)
reanimate_button.TextSize = 40.000
reanimate_button.TextStrokeColor3 = Color3.fromRGB(140, 173, 177)
reanimate_button.TextWrapped = true

UICorner_2.Parent = reanimate_button

x_button.Name = "x_button"
x_button.Parent = buttons
x_button.BackgroundColor3 = Color3.fromRGB(255, 53, 53)
x_button.BorderColor3 = Color3.fromRGB(0, 0, 0)
x_button.BorderSizePixel = 0
x_button.Position = UDim2.new(0.923954368, 0, -0.0967741907, 0)
x_button.Size = UDim2.new(0, 39, 0, 39)
x_button.ScaleType = Enum.ScaleType.Crop
x_button.SliceScale = 0.000
x_button.TileSize = UDim2.new(0.5, 0, 0.5, 0)

UICorner_3.CornerRadius = UDim.new(0, 20)
UICorner_3.Parent = x_button

ImageLabel.Parent = x_button
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.102564104, 0, 0.0917780921, 0)
ImageLabel.Size = UDim2.new(0, 30, 0, 30)
ImageLabel.Image = "rbxassetid://2195446979"

respawn_button.Name = "respawn_button"
respawn_button.Parent = buttons
respawn_button.BackgroundColor3 = Color3.fromRGB(207, 179, 181)
respawn_button.BorderColor3 = Color3.fromRGB(0, 0, 0)
respawn_button.BorderSizePixel = 0
respawn_button.Position = UDim2.new(0.135302171, 0, 0.688172042, 0)
respawn_button.Selectable = false
respawn_button.Size = UDim2.new(0, 190, 0, 50)
respawn_button.Font = Enum.Font.DenkOne
respawn_button.Text = "Respawn"
respawn_button.TextColor3 = Color3.fromRGB(255, 255, 255)
respawn_button.TextSize = 40.000
respawn_button.TextStrokeColor3 = Color3.fromRGB(140, 173, 177)
respawn_button.TextWrapped = true

UICorner_4.Parent = respawn_button

UICorner_5.CornerRadius = UDim.new(0, 15)
UICorner_5.Parent = main

-- Scripts:

local function PMSWGAR_fake_script() -- reanimate_button.reanimate_script 
	local script = Instance.new('LocalScript', reanimate_button)

	local button = script.Parent
	
	button.MouseButton1Click:Connect(function()
		game:GetService("StarterGui"):SetCore("SendNotification",{
			Title = "Reanimating..",
			Text = "",
			Duration = 2
		})
		reanimate()
	end)
end
coroutine.wrap(PMSWGAR_fake_script)()
local function WYNEQ_fake_script() -- x_button.x_script 
	local script = Instance.new('LocalScript', x_button)

	local button = script.Parent
	local screenGui = button:FindFirstAncestor("bird_gui")
	
	button.MouseButton1Click:Connect(function()
		if screenGui then
			screenGui:Destroy()
		end
	end)
end
coroutine.wrap(WYNEQ_fake_script)()
local function LRBV_fake_script() -- respawn_button.respawn_script 
	local script = Instance.new('LocalScript', respawn_button)

	local button = script.Parent
	
	button.MouseButton1Click:Connect(function()
		game:GetService("StarterGui"):SetCore("SendNotification",{
			Title = "Respawning..",
			Text = "",
			Duration = 2
		})
		respawn(lp)
	end)
end
coroutine.wrap(LRBV_fake_script)()
local function XGDSWJ_fake_script() -- main_background.move_script 
	local script = Instance.new('LocalScript', main_background)

	local UIS = game:GetService('UserInputService')
	local frame = script.Parent
	local dragToggle = nil
	local dragSpeed = 0.05
	local dragStart = nil
	local startPos = nil
	
	local function updateInput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end
	
	frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = true
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)
	
	UIS.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				updateInput(input)
			end
		end
	end)
end
coroutine.wrap(XGDSWJ_fake_script)()
