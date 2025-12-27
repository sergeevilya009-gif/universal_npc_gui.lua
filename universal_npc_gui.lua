local _0xP = game:GetService("Players")
local _0xLP = _0xP.LocalPlayer
local _0xR = game:GetService("RunService")

local _0xS = {
    AutoKill = false, 
    KillAura = false, 
    AuraRange = 20,
    KillDistance = 4, 
    AttackDead = false, 
    Visualizer = false, 
    ESP = false, 
    ESPNames = false, 
    RemoveUnanchored = false
}

local _0xG = Instance.new("ScreenGui")
_0xG.Name = "BA2_REM3_CORE"
_0xG.ResetOnSpawn = false
local s, e = pcall(function() _0xG.Parent = game:GetService("CoreGui") end)
if not s then _0xG.Parent = _0xLP:WaitForChild("PlayerGui") end

local _0xM = Instance.new("Frame", _0xG)
_0xM.Size = UDim2.new(0, 230, 0, 210)
_0xM.Position = UDim2.new(0.5, -115, 0.5, -105)
_0xM.BackgroundColor3 = Color3.fromRGB(15, 15, 20)
_0xM.BorderSizePixel = 0
_0xM.Active = true
Instance.new("UICorner", _0xM)
Instance.new("UIStroke", _0xM).Color = Color3.fromRGB(0, 255, 255)

local _0xList = Instance.new("Frame", _0xM)
_0xList.Size = UDim2.new(1, -20, 1, -50)
_0xList.Position = UDim2.new(0, 10, 0, 40)
_0xList.BackgroundTransparency = 1
local _0xLayout = Instance.new("UIListLayout", _0xList)
_0xLayout.Padding = UDim.new(0, 5)

local _0xSide = Instance.new("Frame", _0xM)
_0xSide.Position = UDim2.new(1, 10, 0, 0)
_0xSide.BackgroundColor3 = Color3.fromRGB(10, 10, 15)
_0xSide.Visible = false
Instance.new("UICorner", _0xSide)
Instance.new("UIStroke", _0xSide).Color = Color3.fromRGB(0, 255, 255)

local _0xSCont = Instance.new("Frame", _0xSide)
_0xSCont.Size = UDim2.new(1, -20, 1, -20)
_0xSCont.Position = UDim2.new(0, 10, 0, 10)
_0xSCont.BackgroundTransparency = 1
local _0xSLayout = Instance.new("UIListLayout", _0xSCont)
_0xSLayout.Padding = UDim.new(0, 5)

local function _0xTab(name, callback)
    local btn = Instance.new("TextButton", _0xList)
    btn.Size = UDim2.new(1, 0, 0, 35)
    btn.Text = name
    btn.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
    btn.TextColor3 = Color3.new(1,1,1)
    Instance.new("UICorner", btn)
    btn.MouseButton1Click:Connect(function()
        for _, v in pairs(_0xSCont:GetChildren()) do if not v:IsA("UIListLayout") then v:Destroy() end end
        _0xSide.Visible = true
        callback()
        _0xSide.Size = UDim2.new(0, 180, 0, _0xSLayout.AbsoluteContentSize.Y + 25)
    end)
end

local function _0xTog(text, key)
    local b = Instance.new("TextButton", _0xSCont)
    b.Size = UDim2.new(1, 0, 0, 28)
    b.Text = text
    b.BackgroundColor3 = _0xS[key] and Color3.fromRGB(0, 150, 0) or Color3.fromRGB(40, 40, 45)
    b.TextColor3 = Color3.new(1,1,1)
    Instance.new("UICorner", b)
    b.MouseButton1Click:Connect(function()
        _0xS[key] = not _0xS[key]
        b.BackgroundColor3 = _0xS[key] and Color3.fromRGB(0, 150, 0) or Color3.fromRGB(40, 40, 45)
    end)
end

_0xTab("AUTO KILL", function()
    local box = Instance.new("TextBox", _0xSCont)
    box.Size = UDim2.new(1,0,0,28)
    box.Text = "Dist: ".._0xS.KillDistance
    box.BackgroundColor3 = Color3.new(0,0,0)
    box.TextColor3 = Color3.new(1,1,1)
    box.FocusLost:Connect(function() _0xS.KillDistance = tonumber(box.Text:match("%d+")) or 4 end)
    _0xTog("Enable Auto Kill", "AutoKill")
end)

_0xTab("KILL AURA", function()
    local rbox = Instance.new("TextBox", _0xSCont)
    rbox.Size = UDim2.new(1,0,0,28)
    rbox.Text = "Range: ".._0xS.AuraRange
    rbox.BackgroundColor3 = Color3.new(0,0,0)
    rbox.TextColor3 = Color3.new(1,1,1)
    rbox.FocusLost:Connect(function() _0xS.AuraRange = tonumber(rbox.Text:match("%d+")) or 20 end)
    _0xTog("Enable Aura", "KillAura")
    _0xTog("Visualizer", "Visualizer")
end)

_0xTab("USEFUL", function()
    _0xTog("NPC ESP", "ESP")
    _0xTog("ESP Names", "ESPNames")
    _0xTog("Remove Unanchored", "RemoveUnanchored")
    local c = Instance.new("TextButton", _0xSCont)
    c.Size = UDim2.new(1,0,0,28)
    c.Text = "NPC Controller"
    c.BackgroundColor3 = Color3.fromRGB(100,0,200)
    c.TextColor3 = Color3.new(1,1,1)
    c.MouseButton1Click:Connect(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/randomstring0/fe-source/refs/heads/main/NPC/source/main.Luau"))() end)
end)

_0xR.Heartbeat:Connect(function()
    local char = _0xLP.Character
    local root = char and char:FindFirstChild("HumanoidRootPart")
    if not root then return end
    
    for _, v in pairs(workspace:GetDescendants()) do
        if v:IsA("Humanoid") and v.Parent ~= char and not _0xP:GetPlayerFromCharacter(v.Parent) then
            local pRoot = v.Parent:FindFirstChild("HumanoidRootPart") or v.Parent:FindFirstChild("Head")
            if pRoot then
                -- ESP Logic
                if _0xS.ESP then
                    local h = v.Parent:FindFirstChild("ESPH") or Instance.new("Highlight", v.Parent)
                    h.Name = "ESPH"
                    if _0xS.ESPNames and not pRoot:FindFirstChild("ESPT") then
                        local t = Instance.new("BillboardGui", pRoot); t.Name = "ESPT"; t.Size = UDim2.new(0,100,0,50); t.AlwaysOnTop = true; t.ExtentsOffset = Vector3.new(0,3,0)
                        local l = Instance.new("TextLabel", t); l.Size = UDim2.new(1,0,1,0); l.Text = v.Parent.Name; l.TextColor3 = Color3.new(1,1,1); l.BackgroundTransparency = 1
                    end
                else
                    if v.Parent:FindFirstChild("ESPH") then v.Parent.ESPH:Destroy() end
                    if pRoot:FindFirstChild("ESPT") then pRoot.ESPT:Destroy() end
                end
                
                -- Kill Logic
                local d = (pRoot.Position - root.Position).Magnitude
                if _0xS.AutoKill and d < 500 then
                    root.Velocity = Vector3.zero -- Fling Fix
                    root.CFrame = pRoot.CFrame * CFrame.new(0, _0xS.KillDistance, 0) * CFrame.Angles(math.rad(-90), 0, 0)
                end
                if _0xS.KillAura and d <= _0xS.AuraRange then
                    local t = char:FindFirstChildOfClass("Tool")
                    if t then t:Activate(); firetouchinterest(t.Handle, pRoot, 0); firetouchinterest(t.Handle, pRoot, 1) end
                end
                if _0xS.RemoveUnanchored and pRoot.Anchored == false then v.Parent:Destroy() end
            end
        end
    end
end)

local _0xH = Instance.new("Frame", _0xM)
_0xH.Size = UDim2.new(1, 0, 0, 30)
_0xH.BackgroundColor3 = Color3.new(0,0,0)
local _0xT = Instance.new("TextLabel", _0xH)
_0xT.Size = UDim2.new(1,0,1,0)
_0xT.Text = "B.A2, R.E.M3 CORE"
_0xT.TextColor3 = Color3.new(0,1,1)
_0xT.BackgroundTransparency = 1

