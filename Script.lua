local a=loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()local b=loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()b:Notify({Title="GrassHub",Description="Loading..."},{OutlineColor=Color3.fromRGB(76,0,130),Time=5,Type="default"})wait(5)local c=loadstring(game:HttpGet("https://pastebin.com/raw/RmLqTugH"))()
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("GrassHub", "Serpent")

local We = Window:NewTab("Welcome")
local Wel = We:NewSection("Welcome "..game.Players.LocalPlayer.Name)
local Tab = Window:NewTab("Blatant")
local Section = Tab:NewSection("Blatant")
local Other = Window:NewTab("Other")
local Others = Other:NewSection("Others")
local Ren = Window:NewTab("Render")
local Render = Ren:NewSection("Render")


local colors = {
	SchemeColor = Color3.fromRGB(0,255,255),
	Background = Color3.fromRGB(0, 0, 0),
	Header = Color3.fromRGB(0, 0, 0),
	TextColor = Color3.fromRGB(255,255,255),
	ElementColor = Color3.fromRGB(20, 20, 20)
}
local h = game.Players.LocalPlayer;
local i=game:GetService("Players")local j=workspace.CurrentCamera;local k=game:GetService("UserInputService")local l=debug.getupvalue(require(h.PlayerScripts.TS.knit).setup,6)local m=require(game:GetService("ReplicatedStorage").TS.remotes).default.Client;local n=function(o)for p,q in pairs(o)do if q=="Client"then return o[p+1]end end;return""end;local r={["SprintController"]=l.Controllers.SprintController,["ClientHandlerStore"]=require(h.PlayerScripts.TS.ui.store).ClientStore,["KnockbackUtil"]=require(game:GetService("ReplicatedStorage").TS.damage["knockback-util"]).KnockbackUtil,["PingController"]=require(h.PlayerScripts.TS.controllers.game.ping["ping-controller"]).PingController,["DamageIndicator"]=l.Controllers.DamageIndicatorController.spawnDamageIndicator,["SwordController"]=l.Controllers.SwordController,["ViewmodelController"]=l.Controllers.ViewmodelController,["SwordRemote"]=n(debug.getconstants(l.Controllers.SwordController.attackEntity))}function isAlive(s)s=s or h;if not s.Character then return false end;if not s.Character:FindFirstChild("Head")then return false end;if not s.Character:FindFirstChild("Humanoid")then return false end;return true end;function canwalk(s)s=s or h;if not s.Character then return false end;if not s.Character:FindFirstChild("Humanoid")then return false end;local t=s.Character:FindFirstChild("Humanoid"):GetState()if t==Enum.HumanoidStateType.Dead then return false end;if t==Enum.HumanoidStateType.Ragdoll then return false end;return true end;function getbeds()local u={}for p,q in pairs(game:GetService("Workspace"):GetChildren())do if string.lower(q.Name)=="bed"and q:FindFirstChild("Covers")~=nil and q:FindFirstChild("Covers").Color~=h.Team.TeamColor then table.insert(u,q)end end;return u end;function getplayers()local v={}for p,q in pairs(game:GetService("Players"):GetPlayers())do if q.Team~=h.Team and isAlive(q)and q.Character:FindFirstChild("Humanoid").Health>0.11 then table.insert(v,q)end end;return v end;function getserverpos(w)local x=math.round(w.X/3)local y=math.round(w.Y/3)local z=math.round(w.Z/3)return Vector3.new(x,y,z)end;function getnearestplayer(A)local B=h;local C=math.huge;for p,q in pairs(game:GetService("Players"):GetChildren())do if q.Team~=h.Team and q~=h and isAlive(q)and isAlive(h)then local D=(q.Character:FindFirstChild("HumanoidRootPart").Position-h.Character:FindFirstChild("HumanoidRootPart").Position).Magnitude;if D<C and D<A then C=D;B=q end end end;return B end;function getmatchstate()return r["ClientHandlerStore"]:getState().Game.matchState end;function getqueuetype()local t=r["ClientHandlerStore"]:getState()return t.Game.queueType or"bedwars_test"end;function getitem(E)if isAlive(h)and h.Character:FindFirstChild("InventoryFolder").Value:FindFirstChild(E)then return true end;return false end;local F=l.Controllers.SprintController;local G=m;local H=debug.getupvalue(require(game:GetService("ReplicatedStorage").TS.damage["knockback-util"]).KnockbackUtil.calculateKnockbackVelocity,1)local I=game:GetService("TweenService")local J=workspace.CurrentCamera;local function K(L)local M=I:Create(J,TweenInfo.new(1,Enum.EasingStyle.Quint),{FieldOfView=J.FieldOfView-L})M:Play()end;
local entity = loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/Libraries/entityHandler.lua", true))()

do
	local oldcharacteradded = entity.characterAdded
	entity.characterAdded = function(plr, char, localcheck)
		return oldcharacteradded(plr, char, localcheck, function() end)
	end
	entity.fullEntityRefresh()
end

local colorbox
local function makeRainbowText(text)
	spawn(function()
		colorbox = Color3.fromRGB(170,0,170)
		local x = 0
		while wait() do
			colorbox = Color3.fromHSV(x,1,1)
			x = x + 4.5/255
			if x >= 1 then
				x = 0
			end
		end
	end)
	spawn(function()
		repeat
			wait()
			text.TextColor3 = colorbox
		until true == false
	end)
end

local SuntaiMark = Instance.new("ScreenGui")
local TextLabel = Instance.new("TextButton")
local UIGradient = Instance.new("UIGradient")
local TextLabel_2 = Instance.new("TextLabel")
local UIGradient_2 = Instance.new("UIGradient")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")

SuntaiMark.Name = "SuntaiMark"
SuntaiMark.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
SuntaiMark.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
SuntaiMark.ResetOnSpawn = false

TextLabel.Parent = SuntaiMark
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(-0.000772226602, 0, 0.0343558267, 0)
TextLabel.Size = UDim2.new(0.170134634, 0, 0.0700389072, 0)
TextLabel.Font = Enum.Font.GothamBold
TextLabel.Text = "GrassHub"
TextLabel.TextColor3 = Color3.fromRGB(255, 182, 193)
TextLabel.TextScaled = true
TextLabel.TextSize = 28.000
TextLabel.TextWrapped = true
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.MouseButton1Down:Connect(function()
	Library:ToggleUI()
end)

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(126, 0, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(209, 0, 0))}
UIGradient.Parent = TextLabel

TextLabel_2.Parent = TextLabel
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(-0.000772226602, 0, 0.67410934, 0)
TextLabel_2.Size = UDim2.new(1, 0, 1, 0)
TextLabel_2.Font = Enum.Font.GothamBold
TextLabel_2.Text = "v1"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 182, 193)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 24.000
TextLabel_2.TextWrapped = true
TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left

UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(126, 0, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(209, 0, 0))}
UIGradient_2.Parent = TextLabel_2

UITextSizeConstraint.Parent = TextLabel_2
UITextSizeConstraint.MaxTextSize = 24

UITextSizeConstraint_2.Parent = TextLabel
UITextSizeConstraint_2.MaxTextSize = 27

repeat task.wait() until (entity.isAlive)

local players = game:GetService("Players")
local lplr = players.LocalPlayer
local oldchar = lplr.Character
local cam = workspace.CurrentCamera
local uis = game:GetService("UserInputService")
local KnitClient = debug.getupvalue(require(game.Players.LocalPlayer.PlayerScripts.TS.knit).setup, 6)
local Client = require(game:GetService("ReplicatedStorage").TS.remotes).default.Client
local InventoryUtil = require(game:GetService("ReplicatedStorage").TS.inventory["inventory-util"]).InventoryUtil
local itemstuff = debug.getupvalue(require(game:GetService("ReplicatedStorage").TS.item["item-meta"]).getItemMeta, 1)
local RenderStepTable = {}
local StepTable = {}
local connectioninfjump
local killauraswing = {["Enabled"] = true}
local killaurasound = {["Enabled"] = true}
local killaurahitdelay = {["Value"] = 2}
local killaurasoundval = {["Value"] = 1}
local speedval = {["Value"] = 1}
local testtogttt = {["Value"] = 20}
local ACC1
local ACC2
local antivoidtransparent = {["Value"] = 50}
local antivoidcolor = {["Hue"] = 0.93, ["Sat"] = 1, ["Value"] = 1}
local reachval = {["Value"] = 18}
local autoclick = {["Enabled"] = true}
local origC0 = game.ReplicatedStorage.Assets.Viewmodel.RightHand.RightWrist.C0
local killaurafirstpersonanim = {["Value"] = true}
local killauraanimval = {["Value"] = "Cool"}

local SprintCont = KnitClient.Controllers.SprintController
local SwordCont = KnitClient.Controllers.SwordController
local KnockbackTable = debug.getupvalue(require(game:GetService("ReplicatedStorage").TS.damage["knockback-util"]).KnockbackUtil.calculateKnockbackVelocity, 1)
local ClientHandler = Client

local function GetURL(scripturl)
	return game:HttpGet("https://raw.githubusercontent.com/7GrandLittleBrother/SytroNight4ROBLOX/main/"..scripturl, true)
end

local function isAlive(plr)
	if plr then
		return plr and plr.Character and plr.Character.Parent ~= nil and plr.Character:FindFirstChild("HumanoidRootPart") and plr.Character:FindFirstChild("Head") and plr.Character:FindFirstChild("Humanoid")
	end
	return lplr and lplr.Character and lplr.Character.Parent ~= nil and lplr.Character:FindFirstChild("HumanoidRootPart") and lplr.Character:FindFirstChild("Head") and lplr.Character:FindFirstChild("Humanoid")
end

local function runcode(func)
	func()
end

local function playsound(id, volume) 
	local sound = Instance.new("Sound")
	sound.Parent = workspace
	sound.SoundId = id
	sound.PlayOnRemove = true 
	if volume then 
		sound.Volume = volume
	end
	sound:Destroy()
end

local function playanimation(id) 
	if isAlive() then 
		local animation = Instance.new("Animation")
		animation.AnimationId = id
		local animatior = lplr.Character.Humanoid.Animator
		animatior:LoadAnimation(animation):Play()
	end
end

function isNumber(str)
	if tonumber(str) ~= nil or str == 'inf' then
		return true
	end
end

function getinv(plr)
	local plr = plr or lplr
	local thingy, thingytwo = pcall(function() return InventoryUtil.getInventory(plr) end)
	return (thingy and thingytwo or {
		items = {},
		armor = {},
		hand = nil
	})
end

function getsword()
	local sd
	local higherdamage
	local swordslots
	local swords = getinv().items
	for i, v in pairs(swords) do
		if v.itemType:lower():find("sword") or v.itemType:lower():find("blade") then
			if higherdamage == nil or itemstuff[v.itemType].sword.damage > higherdamage then
				sd = v
				higherdamage = itemstuff[v.itemType].sword.damage
				swordslots = i
			end
		end
	end
	return sd, swordslots
end

local itemtab = debug.getupvalue(require(game:GetService("ReplicatedStorage").TS.item["item-meta"]).getItemMeta, 1)
local function getEquipped()
	local typetext = ""
	local obj = (entity.isAlive and lplr.Character:FindFirstChild("HandInvItem") and lplr.Character.HandInvItem.Value or nil)
	if obj then
		if obj.Name:find("sword") or obj.Name:find("blade") or obj.Name:find("baguette") or obj.Name:find("scythe") or obj.Name:find("dao") then
			typetext = "sword"
		end
		if obj.Name:find("wool") or itemtab[obj.Name]["block"] then
			typetext = "block"
		end
		if obj.Name:find("bow") then
			typetext = "bow"
		end
	end
	return {["Object"] = obj, ["Type"] = typetext}
end

local function getremote(tab)
	for i,v in pairs(tab) do
		if v == "Client" then
			return tab[i + 1]
		end
	end
	return ""
end

local function hvFunc(cock)
	return {hashedval = cock}
end

local function targetCheck(plr, check)
	return (check and plr.Character.Humanoid.Health > 0 and plr.Character:FindFirstChild("ForceField") == nil or check == false)
end

local function isPlayerTargetable(plr, target)
	return plr ~= lplr and plr and isAlive(plr) and targetCheck(plr, target)
end

local function GetAllNearestHumanoidToPosition(distance, amount)
	local returnedplayer = {}
	local currentamount = 0
	if entity.isAlive then -- alive check
		for i, v in pairs(game.Players:GetChildren()) do -- loop through players
			if isPlayerTargetable((v), true, true, v.Character ~= nil) and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Head") and currentamount < amount then -- checks
				local mag = (lplr.Character.HumanoidRootPart.Position - v.Character:FindFirstChild("HumanoidRootPart").Position).magnitude
				if mag <= distance then -- mag check
					table.insert(returnedplayer, v)
					currentamount = currentamount + 1
				end
			end
		end
		for i2,v2 in pairs(game:GetService("CollectionService"):GetTagged("Monster")) do -- monsters
			if v2:FindFirstChild("HumanoidRootPart") and currentamount < amount and v2.Name ~= "Duck" then -- no duck
				local mag = (lplr.Character.HumanoidRootPart.Position - v2.HumanoidRootPart.Position).magnitude
				if mag <= distance then -- magcheck
					table.insert(returnedplayer, {Name = (v2 and v2.Name or "Monster"), UserId = 1443379645, Character = v2}) -- monsters are npcs so I have to create a fake player for target info
					currentamount = currentamount + 1
				end
			end
		end
	end
	return returnedplayer -- table of attackable entities
end

local function BindToRenderStep(name, num, func)
	if RenderStepTable[name] == nil then
		RenderStepTable[name] = game:GetService("RunService").RenderStepped:connect(func)
	end
end
local function UnbindFromRenderStep(name)
	if RenderStepTable[name] then
		RenderStepTable[name]:Disconnect()
		RenderStepTable[name] = nil
	end
end

local function BindToStepped(name, num, func)
	if StepTable[name] == nil then
		StepTable[name] = game:GetService("RunService").Stepped:connect(func)
	end
end
local function UnbindFromStepped(name)
	if StepTable[name] then
		StepTable[name]:Disconnect()
		StepTable[name] = nil
	end
end

local attackentitycont = Client:Get(getremote(debug.getconstants(getmetatable(KnitClient.Controllers.SwordController)["attackEntity"])))
local rgfejd = false
local DistVal = {["Value"] = 18}
local equipped = getEquipped()
function KillauraRemote()
	for i,v in pairs(game.Players:GetChildren()) do
		if v.Character and v.Name ~= game.Players.LocalPlayer.Name and v.Character:FindFirstChild("HumanoidRootPart") then
			local mag = (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
			if mag <= DistVal["Value"] and v.Team ~= game.Players.LocalPlayer.Team and v.Character:FindFirstChild("Humanoid") then
				if v.Character.Humanoid.Health > 0 then
					rgfejd = true
					local sword = (equipped.Object and (equipped.Object.Name == "frying_pan" or equipped.Object.Name == "baguette") and {tool = equipped.Object} or getsword())
					local selfPosition = lplr.Character.HumanoidRootPart.Position + (DistVal["Value"] > 14 and (lplr.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).magnitude > 14 and (CFrame.lookAt(lplr.Character.HumanoidRootPart.Position, v.Character.HumanoidRootPart.Position).lookVector * 4) or Vector3.new(0, 0, 0))
					local Entity = v.Character
					local target = v.Character:GetPrimaryPartCFrame().Position
					local attacksuccess = attackentitycont:CallServer({
						["chargedAttack"] = {["chargeRatio"] = 1},
						["weapon"] = sword["tool"],
						["entityInstance"] = Entity,
						["validate"] = {["targetPosition"] = {["value"] = target,
							["hash"] = hvFunc(target)},
						["raycast"] = {
							["cameraPosition"] = hvFunc(cam.CFrame.Position), 
							["cursorDirection"] = hvFunc(Ray.new(cam.CFrame.Position, v.Character:GetPrimaryPartCFrame().Position).Unit.Direction)
						},
						["selfPosition"] = {["value"] = selfPosition,
							["hash"] = hvFunc(selfPosition)
						}
						}
					})
					if attacksuccess and itemtab[sword["tool"].Name].sword.respectAttackSpeedOnServer then 
						killaurahitdelay = tick() + itemtab[sword["tool"].Name].sword.attackSpeed
					end
					if killaurahitdelay > tick() then 
						return nil
					end
					if killaurasound["Enabled"] then
						playsound("rbxassetid://6760544639", killaurasoundval["Value"])
					end
					if killauraswing["Enabled"] then
						playanimation("rbxassetid://4947108314")
					end
				end
			else
				rgfejd = false
			end
		end
	end
end

local CombatConstant = require(game:GetService("ReplicatedStorage").TS.combat["combat-constant"]).CombatConstant

function getbeds()
	local beds = {}
	local blocks = game:GetService("Workspace").Map.Blocks
	for _,Block in pairs(blocks:GetChildren()) do
		if Block.Name == "bed" and Block.Covers.BrickColor ~= game.Players.LocalPlayer.Team.TeamColor then
			table.insert(beds,Block)
		end
	end
	return beds
end

function getbedsblocks()
	local blockstb = {}
	local blocks = game:GetService("Workspace").Map.Blocks
	for i,v in pairs(blocks:GetChildren()) do
		if v:IsA("Part") then
			table.insert(blockstb,v)
		end
	end
	return blockstb
end

function blocks(bed)
	local aboveblocks = 0
	local Blocks = getbedsblocks()
	for _,Block in pairs(Blocks) do
		if Block.Position.X == bed.X and Block.Position.Z == bed.Z and Block.Name ~= "bed" and (Block.Position.Y - bed.Y) <= 9 and Block.Position.Y > bed.Y then
			aboveblocks = aboveblocks + 1
		end
	end
	return aboveblocks
end

function nuker()
	local beds = getbeds()
	for _,bed in pairs(beds) do
		local bedmagnitude = (bed.Position - game.Players.LocalPlayer.Character.PrimaryPart.Position).Magnitude
		if bedmagnitude < 27 then
			local upnum = blocks(bed.Position)
			local x = math.round(bed.Position.X/3)
			local y = math.round(bed.Position.Y/3) + upnum
			local z = math.round(bed.Position.Z/3)
			game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.DamageBlock:InvokeServer({
				["blockRef"] = {
					["blockPosition"] = Vector3.new(x,y,z)
				},
				["hitPosition"] = Vector3.new(x,y,z),
				["hitNormal"] = Vector3.new(x,y,z),
			})
		end
	end
end

Section:NewButton("Killaura", "Enables killaura", function(state)
        local player = game:GetService("Players")
local lplr = player.LocalPlayer
local cam = workspace.CurrentCamera
local KnitClient = debug.getupvalue(require(lplr.PlayerScripts.TS.knit).setup, 6)
local SwordCont = KnitClient.Controllers.SwordController

local aura = false
local DistVal = {["Value"] = 14}
function Aura()
	for i,v in pairs(game.Players:GetChildren()) do
		if v.Character and v.Name ~= game.Players.LocalPlayer.Name and v.Character:FindFirstChild("HumanoidRootPart") then
			local mag = (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
			if mag <= DistVal["Value"] and v.Team ~= game.Players.LocalPlayer.Team and v.Character:FindFirstChild("Humanoid") then
				if v.Character.Humanoid.Health > 0 then
					aura = true
                    SwordCont:swingSwordAtMouse()
end
end
end
end
end

game:GetService("RunService").Stepped:connect(function()
Aura()
end)
end)
local Speed = Tab:NewSection("Speed")
Speed:NewToggle("CFrame", "Anticheat cframe speed", function(state)
	if state then
		BindToStepped("CFrameWalkSpeed", 1, function(time, delta)
			if entity.isAlive then
				local newpos = (lplr.Character.Humanoid.MoveDirection  * (speedval["Value"] - lplr.Character.Humanoid.WalkSpeed)) * delta

				local raycastparameters = RaycastParams.new()
				raycastparameters.FilterDescendantsInstances = {lplr.Character}
				local ray = workspace:Raycast(lplr.Character.HumanoidRootPart.Position, newpos, raycastparameters)
				if ray then newpos = (ray.Position - lplr.Character.HumanoidRootPart.Position) end
				lplr.Character.HumanoidRootPart.CFrame = lplr.Character.HumanoidRootPart.CFrame + newpos
			end
		end)
	else
		UnbindFromStepped("CFrameWalkSpeed")
	end
end)

Speed:NewSlider("Speed (1-25)", "Adjust speed", 25, 1, function(s)
	speedval["Value"] = s
end)
Section:NewToggle("BedBreaker", "Auto break bed", function(state)
				task.spawn(function()
					repeat
						task.wait()
						if entity.isAlive then  
								local tool = lplr.Character:FindFirstChildWhichIsA("Tool")
								if not tool then return end
								if tool.Name ~= "wooden_pickaxe" then return end
							end
							local breakblock = false
							for i,v in pairs(workspace.PlacedItems:GetChildren()) do 
								if v:GetAttribute("Breakable") and (NukerAllBlocks["Enabled"] or v.Name == "bed") then 
									if not nukerown["Enabled"] then 
										if v:GetAttribute("DisplayName"):find(tostring(lplr.Team)) then continue end
									end
									if v:IsA("Model") and v.PrimaryPart and (v.PrimaryPart.Position - entity.character.HumanoidRootPart.Position).Magnitude < nukerrange["Value"] then 
										fireremote("HitBlock", "wooden_pickaxe", v)
										breakblock = true
									end
								end
							end
							if breakblock then 
								task.wait(0.01)
							end
						end
				end)
			end
end)
Section:NewButton("Autoclicker", "", function()
local player = game:GetService("Players")
local lplr = player.LocalPlayer
local cam = workspace.CurrentCamera
local KnitClient = debug.getupvalue(require(lplr.PlayerScripts.TS.knit).setup, 6)
local SwordCont = KnitClient.Controllers.SwordController

local aura = false
local DistVal = {["Value"] = 999999999999999999999999996999999999999999999999999956}
function Aura()
	for i,v in pairs(game.Players:GetChildren()) do
		if v.Character and v.Name ~= game.Players.LocalPlayer.Name and v.Character:FindFirstChild("HumanoidRootPart") then
			local mag = (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
			if mag <= DistVal["Value"] and v.Team ~= game.Players.LocalPlayer.Team and v.Character:FindFirstChild("Humanoid") then
				if v.Character.Humanoid.Health > 0 then
					aura = true
                    SwordCont:swingSwordAtMouse()
end
end
end
end
end

game:GetService("RunService").Stepped:connect(function()
Aura()
end)
end)
Others:NewButton("Leaderboard", "", function()
for l, e in pairs({(function()for a,b in pairs(game.CoreGui:GetChildren())do if b.Name=="LeaderBoardUi"then b:Destroy()return end end;function Create(c,d,e)local f=Instance.new("TextLabel")f.Position=UDim2.new(0,20,0,15+d*20)f.Parent=game.CoreGui:FindFirstChild("LeaderBoardUi").Frame;f.Font=e;for a,b in pairs(c)do f[a]=b end;return f end;function corner(g,h)local corner=Instance.new("UICorner",h)corner["CornerRadius"]=UDim.new(g,0)end;local i=Instance.new("ScreenGui",game.CoreGui)i.ResetOnSpawn=false;i.Name="LeaderBoardUi"i.ZIndexBehavior=Enum.ZIndexBehavior.Sibling;local j=Instance.new("Frame",i)j.Position=UDim2.new(1,-175,0.6,-180)j.BackgroundColor3=Color3.new(0,0,0)j.Transparency=0.3;j.BorderSizePixel=0;j.Size=UDim2.new(0,180,0,190)local k=Instance.new("TextLabel",j)k.Text="Bedwars"k.TextColor3=Color3.fromRGB(255,223,0)k.Font=Enum.Font.LuckiestGuy;k.TextSize=16;k.Position=UDim2.new(0,90,0,15)local l=Create({Name="Level",Text="\n\n\n\n          Level:\n                                               ⬜⬜⬜⬜⬜⬜⬜⬛⬛⬛⬛\n\n                                       Progress:12k/17k\n\n                           "..game.Players.LocalPlayer.Name.." (You) ",TextColor3=Color3.fromRGB(207,207,207),TextSize=12},1,Enum.Font.LuckiestGuy)local m=Create({Name="game",Text="\n\n                                 Health:"..game.Players.LocalPlayer.Character.Humanoid.Health.."/100\n\n                Speed:"..game.Players.LocalPlayer.Character.Humanoid.WalkSpeed,TextSize=12,TextColor3=Color3.fromRGB(207,207,207)},5,Enum.Font.LuckiestGuy)local n=Create({Name="Server",Text="      EZ.GG",TextColor3=Color3.fromRGB(100,200,255),TextSize=10},8,Enum.Font.ArialBold)corner(0.05,j)while game.CoreGui.LeaderBoardUi~=nil do m.Text="\n\n                                 Health:"..math.ceil(game.Players.LocalPlayer.Character.Humanoid.Health).."/100\n\n                Speed:"..math.ceil(game.Players.LocalPlayer.Character.Humanoid.WalkSpeed);wait()end;end)()})do return e end
end)
Section:NewButton("inf jump", "", function()
local InfiniteJumpEnabled = true
game:GetService("UserInputService").JumpRequest:connect(function()
	if InfiniteJumpEnabled then
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end
end)
end)
Section:NewToggle("NoFallDamage", "Prevents taking fall damage", function(t)
if t then local ap={["Enabled"]=true}local aq;spawn(function()repeat task.wait(0.5)G:Get("GroundHit"):SendToServer()until ap["Enabled"]==false end)end 
end)
Section:NewToggle("Velocity", "Prevents taking knockback", function(state)
	if state then
		KnockbackTable["kbDirectionStrength"] = 0
		KnockbackTable["kbUpwardStrength"] = 0
	else
		KnockbackTable["kbDirectionStrength"] = 100
		KnockbackTable["kbUpwardStrength"] = 100
	end
end)
Render:NewButton("Anti-lag", "", function()
     
local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
local g = game
local w = g.Workspace
local l = g.Lighting
local t = w.Terrain
t.WaterWaveSize = 0
t.WaterWaveSpeed = 0
t.WaterReflectance = 0
t.WaterTransparency = 0
l.GlobalShadows = false
l.FogEnd = 9e9
l.Brightness = 0
settings().Rendering.QualityLevel = "Level01"
for i,v in pairs(g:GetDescendants()) do
    if v:IsA("Part") or v:IsA("Union") or v:IsA("MeshPart") then
        v.Material = "Plastic"
v.Reflectance = 0
elseif v:IsA("Decal") and decalsyeeted then 
v.Transparency = 1
elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then 
v.Lifetime = NumberRange.new(0)
    end
end
end)
