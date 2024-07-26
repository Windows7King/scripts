--[[
_   _ _ _   _                 _         _____                      _       _____ _   _ _____ 
| | | | | | (_)               | |       |  __ \                    (_)     |  __ \ | | |_   _|
| | | | | |_ _ _ __ ___   __ _| |_ ___  | |  \/ ___ _ __   ___  ___ _ ___  | |  \/ | | | | |  
| | | | | __| | '_ ` _ \ / _` | __/ _ \ | | __ / _ \ '_ \ / _ \/ __| / __| | | __| | | | | |  
| |_| | | |_| | | | | | | (_| | ||  __/ | |_\ \  __/ | | |  __/\__ \ \__ \ | |_\ \ |_| |_| |_ 
 \___/|_|\__|_|_| |_| |_|\__,_|\__\___|  \____/\___|_| |_|\___||___/_|___/  \____/\___/ \___/ 

]]
                                                                                              

-- Version: v3.2

-- Instances:

local UltimateGenesisGui = Instance.new("ScreenGui")
local MAIN = Instance.new("Frame")
local BG = Instance.new("ImageLabel")
local UICorner = Instance.new("UICorner")
local UICorner_2 = Instance.new("UICorner")
local Board = Instance.new("ScrollingFrame")
local Goner = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local Button = Instance.new("TextButton")
local Sniper = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")
local Button_2 = Instance.new("TextButton")
local AK47 = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local Button_3 = Instance.new("TextButton")
local Shadow = Instance.new("Frame")
local UICorner_6 = Instance.new("UICorner")
local Shadow_2 = Instance.new("Frame")
local UICorner_7 = Instance.new("UICorner")
local Shadow_3 = Instance.new("Frame")
local UICorner_8 = Instance.new("UICorner")
local R6 = Instance.new("TextButton")
local UICorner_9 = Instance.new("UICorner")
local Respawn = Instance.new("TextButton")
local UICorner_10 = Instance.new("UICorner")
local Options = Instance.new("ImageButton")
local UICorner_11 = Instance.new("UICorner")
local ImageLabel = Instance.new("ImageLabel")
local X = Instance.new("TextButton")
local UICorner_12 = Instance.new("UICorner")
local CONFIG = Instance.new("Frame")
local UICorner_13 = Instance.new("UICorner")
local ASL = Instance.new("TextButton")
local Checkmark = Instance.new("ImageButton")
local CTP = Instance.new("TextButton")
local Checkmark_2 = Instance.new("ImageButton")
local PH = Instance.new("TextButton")
local Checkmark_3 = Instance.new("ImageButton")
local CF = Instance.new("TextButton")
local Checkmark_4 = Instance.new("ImageButton")
local HFT = Instance.new("TextButton")
local Checkmark_5 = Instance.new("ImageButton")
local DCS = Instance.new("TextButton")
local Checkmark_6 = Instance.new("ImageButton")
local FCS = Instance.new("TextButton")
local Checkmark_7 = Instance.new("ImageButton")
local SR = Instance.new("TextButton")
local Checkmark_8 = Instance.new("ImageButton")
local TextLabel = Instance.new("TextLabel")
local line = Instance.new("Frame")
local TextLabel_2 = Instance.new("TextLabel")
local UGG = Instance.new("TextButton")

--Properties:

UltimateGenesisGui.Name = "UltimateGenesisGui"
UltimateGenesisGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
UltimateGenesisGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
UltimateGenesisGui.ResetOnSpawn = false

MAIN.Name = "MAIN"
MAIN.Parent = UltimateGenesisGui
MAIN.Active = true
MAIN.BackgroundColor3 = Color3.fromRGB(186, 32, 35)
MAIN.BorderColor3 = Color3.fromRGB(225, 15, 78)
MAIN.BorderSizePixel = 10
MAIN.LayoutOrder = 1
MAIN.Position = UDim2.new(0.713785887, 0, 0.213603824, 0)
MAIN.Size = UDim2.new(0, 404, 0, 481)

BG.Name = "BG"
BG.Parent = MAIN
BG.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BG.BackgroundTransparency = 1.000
BG.BorderColor3 = Color3.fromRGB(0, 0, 0)
BG.BorderSizePixel = 0
BG.SelectionImageObject = MAIN
BG.Size = UDim2.new(0, 404, 0, 481)
BG.ZIndex = 0
BG.Image = "rbxassetid://5104686245"
BG.ImageColor3 = Color3.fromRGB(229, 30, 33)

UICorner.CornerRadius = UDim.new(0, 15)
UICorner.Parent = BG

UICorner_2.CornerRadius = UDim.new(0, 15)
UICorner_2.Parent = MAIN

Board.Name = "Board"
Board.Parent = MAIN
Board.Active = true
Board.BackgroundColor3 = Color3.fromRGB(255, 222, 166)
Board.BorderColor3 = Color3.fromRGB(0, 0, 0)
Board.BorderSizePixel = 0
Board.Position = UDim2.new(0.103942566, 0, 0.136038229, 0)
Board.Size = UDim2.new(0, 331, 0, 349)
Board.SizeConstraint = Enum.SizeConstraint.RelativeYY

Goner.Name = "Goner"
Goner.Parent = Board
Goner.Active = true
Goner.BackgroundColor3 = Color3.fromRGB(195, 44, 47)
Goner.BorderColor3 = Color3.fromRGB(0, 0, 0)
Goner.BorderSizePixel = 0
Goner.Position = UDim2.new(0, 5, 0, 5)
Goner.Size = UDim2.new(0, 306, 0, 40)
Goner.ZIndex = 2

UICorner_3.CornerRadius = UDim.new(0, 10)
UICorner_3.Parent = Goner

Button.Name = "Button"
Button.Parent = Goner
Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button.BackgroundTransparency = 1.000
Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
Button.BorderSizePixel = 0
Button.Position = UDim2.new(0, 10, 0, 0)
Button.Size = UDim2.new(0, 235, 0, 40)
Button.Font = Enum.Font.FredokaOne
Button.Text = "Goner"
Button.TextColor3 = Color3.fromRGB(245, 245, 245)
Button.TextSize = 22.000
Button.TextWrapped = true
Button.TextXAlignment = Enum.TextXAlignment.Left

Sniper.Name = "Sniper"
Sniper.Parent = Board
Sniper.Active = true
Sniper.BackgroundColor3 = Color3.fromRGB(195, 44, 47)
Sniper.BorderColor3 = Color3.fromRGB(0, 0, 0)
Sniper.BorderSizePixel = 0
Sniper.Position = UDim2.new(0, 5, 0, 55)
Sniper.Size = UDim2.new(0, 306, 0, 40)
Sniper.ZIndex = 2

UICorner_4.CornerRadius = UDim.new(0, 10)
UICorner_4.Parent = Sniper

Button_2.Name = "Button"
Button_2.Parent = Sniper
Button_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button_2.BackgroundTransparency = 1.000
Button_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Button_2.BorderSizePixel = 0
Button_2.Position = UDim2.new(0, 10, 0, 0)
Button_2.Size = UDim2.new(0, 235, 0, 40)
Button_2.Font = Enum.Font.FredokaOne
Button_2.Text = "Sniper"
Button_2.TextColor3 = Color3.fromRGB(245, 245, 245)
Button_2.TextSize = 22.000
Button_2.TextWrapped = true
Button_2.TextXAlignment = Enum.TextXAlignment.Left

AK47.Name = "AK47"
AK47.Parent = Board
AK47.Active = true
AK47.BackgroundColor3 = Color3.fromRGB(195, 44, 47)
AK47.BorderColor3 = Color3.fromRGB(0, 0, 0)
AK47.BorderSizePixel = 0
AK47.Position = UDim2.new(0, 5, 0, 105)
AK47.Size = UDim2.new(0, 306, 0, 40)
AK47.ZIndex = 2

UICorner_5.CornerRadius = UDim.new(0, 10)
UICorner_5.Parent = AK47

Button_3.Name = "Button"
Button_3.Parent = AK47
Button_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button_3.BackgroundTransparency = 1.000
Button_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Button_3.BorderSizePixel = 0
Button_3.Position = UDim2.new(0, 10, 0, 0)
Button_3.Size = UDim2.new(0, 235, 0, 40)
Button_3.Font = Enum.Font.FredokaOne
Button_3.Text = "AK-47"
Button_3.TextColor3 = Color3.fromRGB(245, 245, 245)
Button_3.TextSize = 22.000
Button_3.TextWrapped = true
Button_3.TextXAlignment = Enum.TextXAlignment.Left

Shadow.Name = "Shadow"
Shadow.Parent = Board
Shadow.Active = true
Shadow.BackgroundColor3 = Color3.fromRGB(139, 31, 36)
Shadow.BorderColor3 = Color3.fromRGB(0, 0, 0)
Shadow.BorderSizePixel = 0
Shadow.Position = UDim2.new(0, 5, 0, 58)
Shadow.Size = UDim2.new(0, 306, 0, 40)
Shadow.ZIndex = -99

UICorner_6.CornerRadius = UDim.new(0, 10)
UICorner_6.Parent = Shadow

Shadow_2.Name = "Shadow"
Shadow_2.Parent = Board
Shadow_2.Active = true
Shadow_2.BackgroundColor3 = Color3.fromRGB(139, 31, 36)
Shadow_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Shadow_2.BorderSizePixel = 0
Shadow_2.Position = UDim2.new(0, 5, 0, 8)
Shadow_2.Size = UDim2.new(0, 306, 0, 40)
Shadow_2.ZIndex = -99

UICorner_7.CornerRadius = UDim.new(0, 10)
UICorner_7.Parent = Shadow_2

Shadow_3.Name = "Shadow"
Shadow_3.Parent = Board
Shadow_3.Active = true
Shadow_3.BackgroundColor3 = Color3.fromRGB(139, 31, 36)
Shadow_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Shadow_3.BorderSizePixel = 0
Shadow_3.Position = UDim2.new(0, 5, 0, 108)
Shadow_3.Size = UDim2.new(0, 306, 0, 40)
Shadow_3.ZIndex = -99

UICorner_8.CornerRadius = UDim.new(0, 10)
UICorner_8.Parent = Shadow_3

R6.Name = "R6"
R6.Parent = MAIN
R6.BackgroundColor3 = Color3.fromRGB(234, 147, 40)
R6.BorderColor3 = Color3.fromRGB(0, 0, 0)
R6.BorderSizePixel = 0
R6.Position = UDim2.new(0.508614421, 0, 0.879417896, 0)
R6.Size = UDim2.new(0, 56, 0, 45)
R6.Font = Enum.Font.FredokaOne
R6.Text = "R6"
R6.TextColor3 = Color3.fromRGB(255, 255, 255)
R6.TextSize = 28.000
R6.TextWrapped = true

UICorner_9.CornerRadius = UDim.new(0, 10)
UICorner_9.Parent = R6

Respawn.Name = "Respawn"
Respawn.Parent = MAIN
Respawn.BackgroundColor3 = Color3.fromRGB(234, 147, 40)
Respawn.BorderColor3 = Color3.fromRGB(0, 0, 0)
Respawn.BorderSizePixel = 0
Respawn.Position = UDim2.new(0.664303303, 0, 0.879417896, 0)
Respawn.Size = UDim2.new(0, 125, 0, 45)
Respawn.Font = Enum.Font.FredokaOne
Respawn.Text = "RESPAWN"
Respawn.TextColor3 = Color3.fromRGB(255, 255, 255)
Respawn.TextSize = 28.000
Respawn.TextWrapped = true

UICorner_10.CornerRadius = UDim.new(0, 10)
UICorner_10.Parent = Respawn

Options.Name = "Options"
Options.Parent = MAIN
Options.BackgroundColor3 = Color3.fromRGB(234, 147, 40)
Options.BorderColor3 = Color3.fromRGB(0, 0, 0)
Options.BorderSizePixel = 0
Options.Position = UDim2.new(0.0508474559, 0, 0.879417896, 0)
Options.Size = UDim2.new(0, 46, 0, 45)
Options.ScaleType = Enum.ScaleType.Fit
Options.TileSize = UDim2.new(0.800000012, 0, 1, 0)

UICorner_11.CornerRadius = UDim.new(0, 10)
UICorner_11.Parent = Options

ImageLabel.Parent = Options
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.108695649, 0, 0.111111112, 0)
ImageLabel.Size = UDim2.new(0, 36, 0, 35)
ImageLabel.Image = "rbxassetid://532132767"
ImageLabel.ScaleType = Enum.ScaleType.Fit

X.Name = "X"
X.Parent = MAIN
X.BackgroundColor3 = Color3.fromRGB(240, 44, 47)
X.BorderColor3 = Color3.fromRGB(0, 0, 0)
X.BorderSizePixel = 0
X.Position = UDim2.new(0.923728824, 0, -0.0540540554, 0)
X.Size = UDim2.new(0, 50, 0, 50)
X.Font = Enum.Font.FredokaOne
X.Text = "X"
X.TextColor3 = Color3.fromRGB(255, 255, 255)
X.TextSize = 40.000
X.TextWrapped = true

UICorner_12.CornerRadius = UDim.new(0, 100)
UICorner_12.Parent = X

CONFIG.Name = "CONFIG"
CONFIG.Parent = MAIN
CONFIG.BackgroundColor3 = Color3.fromRGB(110, 10, 19)
CONFIG.BorderColor3 = Color3.fromRGB(0, 0, 0)
CONFIG.BorderSizePixel = 0
CONFIG.Position = UDim2.new(0, 0, 0.474999934, 0)
CONFIG.Size = UDim2.new(0, 159, 0, 252)
CONFIG.SizeConstraint = Enum.SizeConstraint.RelativeYY
CONFIG.ZIndex = -1

UICorner_13.CornerRadius = UDim.new(0, 15)
UICorner_13.Parent = CONFIG

ASL.Name = "ASL"
ASL.Parent = CONFIG
ASL.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ASL.BackgroundTransparency = 1.000
ASL.BorderColor3 = Color3.fromRGB(0, 0, 0)
ASL.BorderSizePixel = 0
ASL.Position = UDim2.new(0.0855613053, 0, 0.192926139, 0)
ASL.Size = UDim2.new(0, 154, 0, 24)
ASL.Font = Enum.Font.SourceSans
ASL.Text = "AllowShiftLock"
ASL.TextColor3 = Color3.fromRGB(255, 255, 255)
ASL.TextSize = 14.000
ASL.TextWrapped = true
ASL.TextXAlignment = Enum.TextXAlignment.Left

Checkmark.Name = "Checkmark"
Checkmark.Parent = ASL
Checkmark.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
Checkmark.BackgroundTransparency = 1.010
Checkmark.BorderColor3 = Color3.fromRGB(27, 42, 53)
Checkmark.BorderSizePixel = 0
Checkmark.Position = UDim2.new(0.641925752, 0, -0.0519917794, 0)
Checkmark.Size = UDim2.new(0, 15, 0, 15)
Checkmark.Image = "rbxassetid://4458804262"
Checkmark.SliceScale = 0.000

CTP.Name = "CTP"
CTP.Parent = CONFIG
CTP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CTP.BackgroundTransparency = 1.000
CTP.BorderColor3 = Color3.fromRGB(0, 0, 0)
CTP.BorderSizePixel = 0
CTP.Position = UDim2.new(0.0855613053, 0, 0.28745243, 0)
CTP.Size = UDim2.new(0, 154, 0, 24)
CTP.Font = Enum.Font.SourceSans
CTP.Text = "CtrlTP"
CTP.TextColor3 = Color3.fromRGB(255, 255, 255)
CTP.TextSize = 14.000
CTP.TextWrapped = true
CTP.TextXAlignment = Enum.TextXAlignment.Left

Checkmark_2.Name = "Checkmark"
Checkmark_2.Parent = CTP
Checkmark_2.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
Checkmark_2.BackgroundTransparency = 1.010
Checkmark_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
Checkmark_2.BorderSizePixel = 0
Checkmark_2.Position = UDim2.new(0.641925752, 0, -0.0519917794, 0)
Checkmark_2.Size = UDim2.new(0, 15, 0, 15)
Checkmark_2.Image = "rbxassetid://4458804262"
Checkmark_2.SliceScale = 0.000

PH.Name = "PH"
PH.Parent = CONFIG
PH.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PH.BackgroundTransparency = 1.000
PH.BorderColor3 = Color3.fromRGB(0, 0, 0)
PH.BorderSizePixel = 0
PH.Position = UDim2.new(0.0855613053, 0, 0.385392129, 0)
PH.Size = UDim2.new(0, 154, 0, 24)
PH.Font = Enum.Font.SourceSans
PH.Text = "Placeholders"
PH.TextColor3 = Color3.fromRGB(255, 255, 255)
PH.TextSize = 14.000
PH.TextWrapped = true
PH.TextXAlignment = Enum.TextXAlignment.Left

Checkmark_3.Name = "Checkmark"
Checkmark_3.Parent = PH
Checkmark_3.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
Checkmark_3.BackgroundTransparency = 1.010
Checkmark_3.BorderColor3 = Color3.fromRGB(27, 42, 53)
Checkmark_3.BorderSizePixel = 0
Checkmark_3.Position = UDim2.new(0.641925752, 0, -0.0519917794, 0)
Checkmark_3.Size = UDim2.new(0, 15, 0, 15)
Checkmark_3.Image = "rbxassetid://4458804262"
Checkmark_3.SliceScale = 0.000

CF.Name = "CF"
CF.Parent = CONFIG
CF.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CF.BackgroundTransparency = 1.000
CF.BorderColor3 = Color3.fromRGB(0, 0, 0)
CF.BorderSizePixel = 0
CF.Position = UDim2.new(0.0855613053, 0, 0.48338443, 0)
CF.Size = UDim2.new(0, 154, 0, 24)
CF.Font = Enum.Font.SourceSans
CF.Text = "ClickFling"
CF.TextColor3 = Color3.fromRGB(255, 255, 255)
CF.TextSize = 14.000
CF.TextWrapped = true
CF.TextXAlignment = Enum.TextXAlignment.Left

Checkmark_4.Name = "Checkmark"
Checkmark_4.Parent = CF
Checkmark_4.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
Checkmark_4.BackgroundTransparency = 1.010
Checkmark_4.BorderColor3 = Color3.fromRGB(27, 42, 53)
Checkmark_4.BorderSizePixel = 0
Checkmark_4.Position = UDim2.new(0.641925752, 0, -0.0519917794, 0)
Checkmark_4.Size = UDim2.new(0, 15, 0, 15)
Checkmark_4.Image = "rbxassetid://4458801905"
Checkmark_4.SliceScale = 0.000

HFT.Name = "HFT"
HFT.Parent = CONFIG
HFT.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HFT.BackgroundTransparency = 1.000
HFT.BorderColor3 = Color3.fromRGB(0, 0, 0)
HFT.BorderSizePixel = 0
HFT.Position = UDim2.new(0.0855613053, 0, 0.581376612, 0)
HFT.Size = UDim2.new(0, 154, 0, 24)
HFT.Font = Enum.Font.SourceSans
HFT.Text = "HighlightTargets"
HFT.TextColor3 = Color3.fromRGB(255, 255, 255)
HFT.TextSize = 14.000
HFT.TextWrapped = true
HFT.TextXAlignment = Enum.TextXAlignment.Left

Checkmark_5.Name = "Checkmark"
Checkmark_5.Parent = HFT
Checkmark_5.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
Checkmark_5.BackgroundTransparency = 1.010
Checkmark_5.BorderColor3 = Color3.fromRGB(27, 42, 53)
Checkmark_5.BorderSizePixel = 0
Checkmark_5.Position = UDim2.new(0.641925752, 0, -0.0519917794, 0)
Checkmark_5.Size = UDim2.new(0, 15, 0, 15)
Checkmark_5.Image = "rbxassetid://4458804262"
Checkmark_5.SliceScale = 0.000

DCS.Name = "DCS"
DCS.Parent = CONFIG
DCS.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DCS.BackgroundTransparency = 1.000
DCS.BorderColor3 = Color3.fromRGB(0, 0, 0)
DCS.BorderSizePixel = 0
DCS.Position = UDim2.new(0.0855613053, 0, 0.671202719, 0)
DCS.Size = UDim2.new(0, 154, 0, 24)
DCS.Font = Enum.Font.SourceSans
DCS.Text = "DisCharScripts"
DCS.TextColor3 = Color3.fromRGB(255, 255, 255)
DCS.TextSize = 14.000
DCS.TextWrapped = true
DCS.TextXAlignment = Enum.TextXAlignment.Left

Checkmark_6.Name = "Checkmark"
Checkmark_6.Parent = DCS
Checkmark_6.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
Checkmark_6.BackgroundTransparency = 1.010
Checkmark_6.BorderColor3 = Color3.fromRGB(27, 42, 53)
Checkmark_6.BorderSizePixel = 0
Checkmark_6.Position = UDim2.new(0.641925752, 0, -0.0519917794, 0)
Checkmark_6.Size = UDim2.new(0, 15, 0, 15)
Checkmark_6.Image = "rbxassetid://4458804262"
Checkmark_6.SliceScale = 0.000

FCS.Name = "FCS"
FCS.Parent = CONFIG
FCS.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FCS.BackgroundTransparency = 1.000
FCS.BorderColor3 = Color3.fromRGB(0, 0, 0)
FCS.BorderSizePixel = 0
FCS.Position = UDim2.new(0.0855605379, 0, 0.759768367, 0)
FCS.Size = UDim2.new(0, 154, 0, 24)
FCS.Font = Enum.Font.SourceSans
FCS.Text = "FlingChangeState"
FCS.TextColor3 = Color3.fromRGB(255, 255, 255)
FCS.TextSize = 14.000
FCS.TextWrapped = true
FCS.TextXAlignment = Enum.TextXAlignment.Left

Checkmark_7.Name = "Checkmark"
Checkmark_7.Parent = FCS
Checkmark_7.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
Checkmark_7.BackgroundTransparency = 1.010
Checkmark_7.BorderColor3 = Color3.fromRGB(27, 42, 53)
Checkmark_7.BorderSizePixel = 0
Checkmark_7.Position = UDim2.new(0.641925752, 0, -0.0519917794, 0)
Checkmark_7.Size = UDim2.new(0, 15, 0, 15)
Checkmark_7.Image = "rbxassetid://4458804262"
Checkmark_7.SliceScale = 0.000

SR.Name = "SR"
SR.Parent = CONFIG
SR.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SR.BackgroundTransparency = 1.000
SR.BorderColor3 = Color3.fromRGB(0, 0, 0)
SR.BorderSizePixel = 0
SR.Position = UDim2.new(0.0855605379, 0, 0.844694912, 0)
SR.Size = UDim2.new(0, 154, 0, 24)
SR.Font = Enum.Font.SourceSans
SR.Text = "SimulationRadius"
SR.TextColor3 = Color3.fromRGB(255, 255, 255)
SR.TextSize = 14.000
SR.TextWrapped = true
SR.TextXAlignment = Enum.TextXAlignment.Left

Checkmark_8.Name = "Checkmark"
Checkmark_8.Parent = SR
Checkmark_8.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
Checkmark_8.BackgroundTransparency = 1.010
Checkmark_8.BorderColor3 = Color3.fromRGB(27, 42, 53)
Checkmark_8.BorderSizePixel = 0
Checkmark_8.Position = UDim2.new(0.641925752, 0, -0.0519917794, 0)
Checkmark_8.Size = UDim2.new(0, 15, 0, 15)
Checkmark_8.Image = "rbxassetid://4458804262"
Checkmark_8.SliceScale = 0.000

TextLabel.Parent = CONFIG
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 159, 0, 47)
TextLabel.Font = Enum.Font.LuckiestGuy
TextLabel.Text = "config"
TextLabel.TextColor3 = Color3.fromRGB(255, 243, 243)
TextLabel.TextSize = 26.000

line.Name = "line"
line.Parent = CONFIG
line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
line.BorderColor3 = Color3.fromRGB(0, 0, 0)
line.BorderSizePixel = 0
line.Position = UDim2.new(0.0700000003, 0, 0.134920642, 0)
line.Size = UDim2.new(0, 133, 0.00999999978, 0)

TextLabel_2.Parent = MAIN
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.074257426, 0, 0, 0)
TextLabel_2.Size = UDim2.new(0, 354, 0, 65)
TextLabel_2.Font = Enum.Font.LuckiestGuy
TextLabel_2.Text = "Ultimate Genesis Gui"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 246, 246)
TextLabel_2.TextSize = 24.000
TextLabel_2.TextWrapped = true

UGG.Name = "UGG"
UGG.Parent = UltimateGenesisGui
UGG.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UGG.BackgroundTransparency = 1.000
UGG.BorderColor3 = Color3.fromRGB(0, 0, 0)
UGG.BorderSizePixel = 0
UGG.Position = UDim2.new(0.0154169584, 0, 0.918854415, 0)
UGG.Size = UDim2.new(0, 107, 0, 50)
UGG.Visible = false
UGG.Font = Enum.Font.FredokaOne
UGG.Text = "UGG"
UGG.TextColor3 = Color3.fromRGB(255, 255, 255)
UGG.TextScaled = true
UGG.TextSize = 14.000
UGG.TextWrapped = true

-- Scripts:

local function PYMDD_fake_script() -- R6.PromptR6 
	local script = Instance.new('LocalScript', R6)

	script.Parent.MouseButton1Click:Connect(function()
		local cloneref = function(o) return o end
		local AvatarEditorService = cloneref(game:GetService("AvatarEditorService"))
		local humanoid = game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid")
		
		if humanoid then
			AvatarEditorService:PromptSaveAvatar(humanoid.HumanoidDescription, Enum.HumanoidRigType["R6"])
			local result = AvatarEditorService.PromptSaveAvatarCompleted:Wait()
			
			if result == Enum.AvatarPromptResult.Success then
				humanoid:ChangeState(Enum.HumanoidStateType.Dead)
			end
		end
	end)
end
coroutine.wrap(PYMDD_fake_script)()
local function DXGT_fake_script() -- Respawn.Respawn 
	local script = Instance.new('LocalScript', Respawn)

	script.Parent.MouseButton1Click:Connect(function()
		local humanoid = game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid")
		
		humanoid:ChangeState(Enum.HumanoidStateType.Dead)
	end)
end
coroutine.wrap(DXGT_fake_script)()
local function YOZYCLA_fake_script() -- Options.option_toggle 
	local script = Instance.new('LocalScript', Options)

	local button = script.Parent
	local config = script.Parent.Parent.CONFIG
	local TweenService = game:GetService("TweenService")
	local bool = false
	
	local InInfo = TweenInfo.new(
		0.2,
		Enum.EasingStyle.Quad,
		Enum.EasingDirection.Out
	)
	
	local OutInfo = TweenInfo.new(
		0.12,
		Enum.EasingStyle.Quad,
		Enum.EasingDirection.Out	
	)
	
	local Hide = TweenService:Create(config,InInfo,{Position = UDim2.new(0,0,0.475,0)})
	local Show = TweenService:Create(config,OutInfo,{Position = UDim2.new(-0.387,0,0.475,0)})
	
	button.MouseButton1Click:Connect(function()
		if bool == false then
			config.Interactable = true
			Show:Play()
			bool = true
		else
			config.Interactable = false
			Hide:Play()
			bool = false
		end
		
	end)
	
	
end
coroutine.wrap(YOZYCLA_fake_script)()
local function PXOUVLK_fake_script() -- MAIN.Drag 
	local script = Instance.new('LocalScript', MAIN)

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
coroutine.wrap(PXOUVLK_fake_script)()
local function CVDMWN_fake_script() -- X.Close 
	local script = Instance.new('LocalScript', X)

	local main = script.Parent.Parent
	
	script.Parent.MouseButton1Click:Connect(function()
		main.Interactable = false
		main.Visible = false
		main.Parent.UGG.Visible = true
		main.Parent.UGG.Interactable = true
	end)
end
coroutine.wrap(CVDMWN_fake_script)()
local function RCTMEX_fake_script() -- Checkmark.LocalScript 
	local script = Instance.new('LocalScript', Checkmark)

	--[[
		Checkmark Box UI
		Made by coolif_y (@cooiifwhy). 
	--]]
	
	local button = script.Parent
	local checkedstate = true
	local ScreenGUI = script.Parent.Parent.Parent.Parent.Parent:GetAttributes()
	local states = {
		Unchecked = "rbxassetid://4458801905",
		Checked = "rbxassetid://4458804262"
	}
	
	local function changestates(RequestedState)
		button.Image = states[RequestedState]
	end
	
	local function checked()
		checkedstate = true
		changestates("Checked")
		ScreenGUI.allowshiftlock = false
	end
	
	local function unchecked()
		checkedstate = false
		changestates("Unchecked")
		ScreenGUI.allowshiftlock = true
	end
	
	button.MouseButton1Click:Connect(function()
		if checkedstate == false then
			checked()
		else
			unchecked()
		end
	end)
end
coroutine.wrap(RCTMEX_fake_script)()
local function XTGYQ_fake_script() -- Checkmark_2.LocalScript 
	local script = Instance.new('LocalScript', Checkmark_2)

	--[[
		Checkmark Box UI
		Made by coolif_y (@cooiifwhy). 
	--]]
	
	local button = script.Parent
	local checkedstate = true
	local ScreenGUI = script.Parent.Parent.Parent.Parent.Parent:GetAttributes()
	local states = {
		Unchecked = "rbxassetid://4458801905",
		Checked = "rbxassetid://4458804262"
	}
	
	local function changestates(RequestedState)
		button.Image = states[RequestedState]
	end
	
	local function checked()
		checkedstate = true
		changestates("Checked")
		ScreenGUI.ctrltp = false
	end
	
	local function unchecked()
		checkedstate = false
		changestates("Unchecked")
		ScreenGUI.ctrltp = true
	end
	
	button.MouseButton1Click:Connect(function()
		if checkedstate == false then
			checked()
		else
			unchecked()
		end
	end)
end
coroutine.wrap(XTGYQ_fake_script)()
local function AMFGMO_fake_script() -- Checkmark_3.LocalScript 
	local script = Instance.new('LocalScript', Checkmark_3)

	--[[
		Checkmark Box UI
		Made by coolif_y (@cooiifwhy). 
	--]]
	
	local button = script.Parent
	local checkedstate = true
	local ScreenGUI = script.Parent.Parent.Parent.Parent.Parent:GetAttributes()
	local states = {
		Unchecked = "rbxassetid://4458801905",
		Checked = "rbxassetid://4458804262"
	}
	
	local function changestates(RequestedState)
		button.Image = states[RequestedState]
	end
	
	local function checked()
		checkedstate = true
		changestates("Checked")
		ScreenGUI.placeholders = false
	end
	
	local function unchecked()
		checkedstate = false
		changestates("Unchecked")
		ScreenGUI.placeholders = true
	end
	
	button.MouseButton1Click:Connect(function()
		if checkedstate == false then
			checked()
		else
			unchecked()
		end
	end)
end
coroutine.wrap(AMFGMO_fake_script)()
local function NILFAD_fake_script() -- Checkmark_4.LocalScript 
	local script = Instance.new('LocalScript', Checkmark_4)

	--[[
		Checkmark Box UI
		Made by coolif_y (@cooiifwhy). 
	--]]
	
	local button = script.Parent
	local checkedstate = false
	local ScreenGUI = script.Parent.Parent.Parent.Parent.Parent:GetAttributes()
	local states = {
		Unchecked = "rbxassetid://4458801905",
		Checked = "rbxassetid://4458804262"
	}
	
	local function changestates(RequestedState)
		button.Image = states[RequestedState]
	end
	
	local function checked()
		checkedstate = true
		changestates("Checked")
		ScreenGUI.clickfling = false
	end
	
	local function unchecked()
		checkedstate = false
		changestates("Unchecked")
		ScreenGUI.clickfling = true
	end
	
	button.MouseButton1Click:Connect(function()
		if checkedstate == false then
			checked()
		else
			unchecked()
		end
	end)
end
coroutine.wrap(NILFAD_fake_script)()
local function AYDIX_fake_script() -- Checkmark_5.LocalScript 
	local script = Instance.new('LocalScript', Checkmark_5)

	--[[
		Checkmark Box UI
		Made by coolif_y (@cooiifwhy). 
	--]]
	
	local button = script.Parent
	local checkedstate = true
	local ScreenGUI = script.Parent.Parent.Parent.Parent.Parent:GetAttributes()
	local states = {
		Unchecked = "rbxassetid://4458801905",
		Checked = "rbxassetid://4458804262"
	}
	
	local function changestates(RequestedState)
		button.Image = states[RequestedState]
	end
	
	local function checked()
		checkedstate = true
		changestates("Checked")
		ScreenGUI.highlightflingtargets = false
	end
	
	local function unchecked()
		checkedstate = false
		changestates("Unchecked")
		ScreenGUI.highlightflingtargets = true
	end
	
	button.MouseButton1Click:Connect(function()
		if checkedstate == false then
			checked()
		else
			unchecked()
		end
	end)
end
coroutine.wrap(AYDIX_fake_script)()
local function VZQIY_fake_script() -- Checkmark_6.LocalScript 
	local script = Instance.new('LocalScript', Checkmark_6)

	--[[
		Checkmark Box UI
		Made by coolif_y (@cooiifwhy). 
	--]]
	
	local button = script.Parent
	local checkedstate = true
	local ScreenGUI = script.Parent.Parent.Parent.Parent.Parent:GetAttributes()
	local states = {
		Unchecked = "rbxassetid://4458801905",
		Checked = "rbxassetid://4458804262"
	}
	
	local function changestates(RequestedState)
		button.Image = states[RequestedState]
	end
	
	local function checked()
		checkedstate = true
		changestates("Checked")
		ScreenGUI.discharscripts = false
	end
	
	local function unchecked()
		checkedstate = false
		changestates("Unchecked")
		ScreenGUI.discharscripts = true
	end
	
	button.MouseButton1Click:Connect(function()
		if checkedstate == false then
			checked()
		else
			unchecked()
		end
	end)
end
coroutine.wrap(VZQIY_fake_script)()
local function HBBX_fake_script() -- Checkmark_7.LocalScript 
	local script = Instance.new('LocalScript', Checkmark_7)

	--[[
		Checkmark Box UI
		Made by coolif_y (@cooiifwhy). 
	--]]
	
	local button = script.Parent
	local checkedstate = true
	local ScreenGUI = script.Parent.Parent.Parent.Parent.Parent:GetAttributes()
	local states = {
		Unchecked = "rbxassetid://4458801905",
		Checked = "rbxassetid://4458804262"
	}
	
	local function changestates(RequestedState)
		button.Image = states[RequestedState]
	end
	
	local function checked()
		checkedstate = true
		changestates("Checked")
		ScreenGUI.flingchangestate = false
	end
	
	local function unchecked()
		checkedstate = false
		changestates("Unchecked")
		ScreenGUI.flingchangestate = true
	end
	
	button.MouseButton1Click:Connect(function()
		if checkedstate == false then
			checked()
		else
			unchecked()
		end
	end)
end
coroutine.wrap(HBBX_fake_script)()
local function HLXR_fake_script() -- Checkmark_8.LocalScript 
	local script = Instance.new('LocalScript', Checkmark_8)

	--[[
		Checkmark Box UI
		Made by coolif_y (@cooiifwhy). 
	--]]
	
	local button = script.Parent
	local checkedstate = true
	local ScreenGUI = script.Parent.Parent.Parent.Parent.Parent:GetAttributes()
	local states = {
		Unchecked = "rbxassetid://4458801905",
		Checked = "rbxassetid://4458804262"
	}
	
	local function changestates(RequestedState)
		button.Image = states[RequestedState]
	end
	
	local function checked()
		checkedstate = true
		changestates("Checked")
		ScreenGUI.simrad = false
	end
	
	local function unchecked()
		checkedstate = false
		changestates("Unchecked")
		ScreenGUI.simrad = true
	end
	
	button.MouseButton1Click:Connect(function()
		if checkedstate == false then
			checked()
		else
			unchecked()
		end
	end)
end
coroutine.wrap(HLXR_fake_script)()
local function NLDHI_fake_script() -- UGG.Open 
	local script = Instance.new('LocalScript', UGG)

	local main = script.Parent.Parent
	
	script.Parent.MouseButton1Click:Connect(function()
		main.MAIN.Visible = true
		main.MAIN.Interactable = true
		main.UGG.Visible = false
		main.UGG.Interactable = false
	end)
end
coroutine.wrap(NLDHI_fake_script)()
