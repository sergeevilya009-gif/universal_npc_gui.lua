local _0x506c6179657273 = game:GetService("\80\108\97\121\101\114\115")
local _0x4c6f63616c506c617y = _0x506c6179657273.LocalPlayer
local _0x555349 = game:GetService("\85\115\101\114\73\110\112\117\116\83\101\114\118\105\99\101")
local _0x52756e53657276 = game:GetService("\82\117\110\83\101\114\118\105\99\101")
local _0x537461746573 = {AutoKill = false, KillAura = false, AuraRange = 20, KillDistance = 4, AttackDead = false, Visualizer = false, ESP = false, ESPNames = false, RemoveUnanchored = false}
local _0x53637265656e477569 = Instance.new("\83\99\114\101\101\110\71\117\105")
_0x53637265656e477569.Name = "\66\65\50\95\82\69\77\51\95\67\79\82\69"
_0x53637265656e477569.ResetOnSpawn = false
_0x53637265656e477569.ZIndexBehavior = Enum.ZIndexBehavior.Global
local _0x73756363657373, _0x657272 = pcall(function() _0x53637265656e477569.Parent = game:GetService("\67\111\114\101\71\117\105") end)
if not _0x73756363657373 then _0x53637265656e477569.Parent = _0x4c6f63616c506c617y:WaitForChild("\80\108\97\121\101\114\71\117\105") end
local _0x4d61696e = Instance.new("\70\114\97\109\101", _0x53637265656e477569)
_0x4d61696e.Size = UDim2.new(0, 230, 0, 195)
_0x4d61696e.Position = UDim2.new(0.5, -115, 0.5, -97)
_0x4d61696e.BackgroundColor3 = Color3.fromRGB(15, 15, 20)
_0x4d61696e.BorderSizePixel = 0
_0x4d61696e.Active = true
Instance.new("\85\73\67\111\114\110\101\114", _0x4d61696e).CornerRadius = UDim.new(0, 10)
local _0x5374726f6b65 = Instance.new("\85\73\83\116\114\111\107\101", _0x4d61696e)
_0x5374726f6b65.Color = Color3.fromRGB(0, 255, 255)
local _0x526573746f7265 = Instance.new("\84\101\120\116\66\117\116\116\111\110", _0x53637265656e477569)
_0x526573746f7265.Size = UDim2.new(0, 120, 0, 30)
_0x526573746f7265.Position = UDim2.new(0.5, -60, 0.05, 0)
_0x526573746f7265.Visible = false
_0x526573746f7265.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
_0x526573746f7265.Text = "\83\72\79\87\32\77\69\78\85"
_0x526573746f7265.TextColor3 = Color3.fromRGB(200, 200, 200)
_0x526573746f7265.Font = "\83\111\117\114\99\101\83\97\110\115\66\111\108\100"
_0x526573746f7265.TextSize = 14
_0x526573746f7265.BorderSizePixel = 0
Instance.new("\85\73\67\111\114\110\101\114", _0x526573746f7265).CornerRadius = UDim.new(0, 6)
local function _0x44726167(_0x6f626a)
    local _0x6472616767696e67, _0x647261675374617274, _0x7374617274506f73, _0x616374697665496e707574
    _0x6f626a.InputBegan:Connect(function(_0x696e707574)
        if not _0x6472616767696e67 and (_0x696e707574.UserInputType == Enum.UserInputType.MouseButton1 or _0x696e707574.UserInputType == Enum.UserInputType.Touch) then
            _0x6472616767696e67 = true; _0x647261675374617274 = _0x696e707574.Position; _0x7374617274506f73 = _0x6f626a.Position; _0x616374697665496e707574 = _0x696e707574
        end
    end)
    _0x555349.InputChanged:Connect(function(_0x696e707574)
        if _0x6472616767696e67 and _0x696e707574 == _0x616374697665496e707574 and (_0x696e707574.UserInputType == Enum.UserInputType.MouseMovement or _0x696e707574.UserInputType == Enum.UserInputType.Touch) then
            local _0x64656c7461 = _0x696e707574.Position - _0x647261675374617274
            _0x6f626a.Position = UDim2.new(_0x7374617274506f73.X.Scale, _0x7374617274506f73.X.Offset + _0x64656c7461.X, _0x7374617274506f73.Y.Scale, _0x7374617274506f73.Y.Offset + _0x64656c7461.Y)
        end
    end)
    _0x555349.InputEnded:Connect(function(_0x696e707574) if _0x696e707574 == _0x616374697665496e707574 then _0x6472616767696e67 = false; _0x616374697665496e707574 = nil end end)
end
_0x44726167(_0x4d61696e); _0x44726167(_0x526573746f7265)
local _0x486561646572 = Instance.new("\70\114\97\109\101", _0x4d61696e)
_0x486561646572.Size = UDim2.new(1, 0, 0, 30); _0x486561646572.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Instance.new("\85\73\67\111\114\110\101\114", _0x486561646572)
local _0x5469746c65 = Instance.new("\84\101\120\116\76\97\98\101\108", _0x486561646572)
_0x5469746c65.Size = UDim2.new(1, -95, 1, 0); _0x5469746c65.Position = UDim2.new(0, 10, 0, 0); _0x5469746c65.Text = "\66\46\65\50\44\32\82\46\69\46\77\51"; _0x5469746c65.TextColor3 = Color3.fromRGB(0, 255, 255); _0x5469746c65.Font = "\83\111\117\114\99\101\83\97\110\115\66\111\108\100"; _0x5469746c65.TextSize = 14; _0x5469746c65.BackgroundTransparency = 1; _0x5469746c65.TextXAlignment = "\76\101\102\116"
local _0x42746e47726f7570 = Instance.new("\70\114\97\109\101", _0x486561646572)
_0x42746e47726f7570.Size = UDim2.new(0, 85, 1, 0); _0x42746e47726f7570.Position = UDim2.new(1, -90, 0, 0); _0x42746e47726f7570.BackgroundTransparency = 1
local _0x42746e4c61796f7574 = Instance.new("\85\73\76\105\115\116\76\97\121\111\117\116", _0x42746e47726f7570); _0x42746e4c61796f7574.FillDirection = "\72\111\114\105\122\111\110\116\97\108"; _0x42746e4c61796f7574.HorizontalAlignment = "\82\105\103\104\116"; _0x42746e4c61796f7574.VerticalAlignment = "\67\101\110\116\101\114"; _0x42746e4c61796f7574.Padding = UDim.new(0, 4)
local _0x4d696e69 = Instance.new("\84\101\120\116\66\117\116\116\111\110", _0x42746e47726f7570); _0x4d696e69.Size = UDim2.new(0, 20, 0, 20); _0x4d696e69.BackgroundColor3 = Color3.fromRGB(60, 60, 60); _0x4d696e69.Text = "\45"; _0x4d696e69.TextColor3 = Color3.new(1,1,1); Instance.new("\85\73\67\111\114\110\101\114", _0x4d696e69)
local _0x45786974 = Instance.new("\84\101\120\116\66\117\116\116\111\110", _0x42746e47726f7570); _0x45786974.Size = UDim2.new(0, 20, 0, 20); _0x45786974.BackgroundColor3 = Color3.fromRGB(200, 0, 0); _0x45786974.Text = "\88"; _0x45786974.TextColor3 = Color3.new(1,1,1); Instance.new("\85\73\67\111\114\110\101\114", _0x45786974)
local _0x4d61696e4c697374 = Instance.new("\70\114\97\109\101", _0x4d61696e)
_0x4d61696e4c697374.Position = UDim2.new(0, 10, 0, 35); _0x4d61696e4c697374.Size = UDim2.new(1, -20, 0, 0); _0x4d61696e4c697374.BackgroundTransparency = 1
local _0x4d61696e4c61796f7574 = Instance.new("\85\73\76\105\115\116\76\97\121\111\117\116", _0x4d61696e4c61796f7574); _0x4d61696e4c61796f7574.Padding = UDim.new(0, 5)
local _0x536964654672616d65 = Instance.new("\70\114\97\109\101", _0x4d61696e)
_0x536964654672616d65.Position = UDim2.new(1, 10, 0, 0); _0x536964654672616d65.BackgroundColor3 = Color3.fromRGB(10, 10, 15); _0x536964654672616d65.Visible = false
Instance.new("\85\73\67\111\114\110\101\114", _0x536964654672616d65); local _0x536964655374726f6b65 = Instance.new("\85\73\83\116\114\111\107\101", _0x536964654672616d65); _0x536964655374726f6b65.Color = Color3.fromRGB(0, 255, 255)
local _0x53696465436f6e74656e74 = Instance.new("\70\114\97\109\101", _0x536964654672616d65)
_0x53696465436f6e74656e74.Size = UDim2.new(1, -20, 1, -20); _0x53696465436f6e74656e74.Position = UDim2.new(0, 10, 0, 10); _0x53696465436f6e74656e74.BackgroundTransparency = 1
local _0x536964654c61796f7574 = Instance.new("\85\73\76\105\115\116\76\97\121\111\117\116", _0x53696465436f6e74656e74); _0x536964654c61796f7574.Padding = UDim.new(0, 6); _0x536964654c61796f7574.SortOrder = Enum.SortOrder.LayoutOrder
local function _0x55706461746553696465() _0x536964654672616d65.Visible = true; _0x536964654672616d65.Size = UDim2.new(0, 180, 0, _0x536964654c61796f7574.AbsoluteContentSize.Y + 20) end
local function _0x437265617465546f67676c65(_0x747874, _0x6b6579)
    local _0x62 = Instance.new("\84\101\120\116\66\117\116\116\111\110", _0x53696465436f6e74656e74)
    _0x62.Size = UDim2.new(1, 0, 0, 28); _0x62.Text = _0x747874; _0x62.BackgroundColor3 = _0x537461746573[_0x6b6579] and Color3.fromRGB(0, 180, 0) or Color3.fromRGB(40, 40, 45); _0x62.TextColor3 = Color3.new(1,1,1); _0x62.Font = "\83\111\117\114\99\101\83\97\110\115"; Instance.new("\85\73\67\111\114\110\101\114", _0x62)
    _0x62.MouseButton1Click:Connect(function() 
        _0x537461746573[_0x6b6579] = not _0x537461746573[_0x6b6579]; _0x62.BackgroundColor3 = _0x537461746573[_0x6b6579] and Color3.fromRGB(0, 180, 0) or Color3.fromRGB(40, 40, 45)
    end)
end
local _0x6c617374546162 = ""
local function _0x416464546162(_0x6e616d65, _0x63616c6c6261636b)
    local _0x62 = Instance.new("\84\101\120\116\66\117\116\116\111\110", _0x4d61696e4c697374)
    _0x62.Size = UDim2.new(1, 0, 0, 35); _0x62.Text = _0x6e616d65; _0x62.BackgroundColor3 = Color3.fromRGB(30, 30, 35); _0x62.TextColor3 = Color3.new(1,1,1); _0x62.Font = "\83\111\117\114\99\101\83\97\110\115\66\111\108\100"; Instance.new("\85\73\67\111\114\110\101\114", _0x62)
    _0x62.MouseButton1Click:Connect(function()
        if _0x536964654672616d65.Visible and _0x6c617374546162 == _0x6e616d65 then _0x536964654672616d65.Visible = false else
            _0x6c617374546162 = _0x6e616d65; for _, _0x76 in pairs(_0x53696465436f6e74656e74:GetChildren()) do if not _0x76:IsA("\85\73\76\105\115\116\76\97\121\111\117\116") then _0x76:Destroy() end end
            _0x63616c6c6261636b(); _0x55706461746553696465()
        end
    end)
end
local _0x566973466f6c646572 = workspace:FindFirstChild("\82\69\77\51\95\86\105\115") or Instance.new("\70\114\111\108\100\101\114", workspace); _0x566973466f6c646572.Name = "\82\69\77\51\95\86\105\115"
local function _0x4472617756697375616c697a6572(_0x706f73, _0x726164697573)
    _0x566973466f6c646572:ClearAllChildren()
    local _0x7365676d656e7473 = 8
    local function _0x72696e67(_0x6366)
        for i = 1, _0x7365676d656e7473 do
            local _0x6131, _0x6132 = (i/_0x7365676d656e7473)*math.pi*2, ((i+1)/_0x7365676d656e7473)*math.pi*2
            local _0x7031, _0x7032 = (_0x6366*CFrame.Angles(0,_0x6131,0)*CFrame.new(0,0,_0x726164697573)).Position, (_0x6366*CFrame.Angles(0,_0x6132,0)*CFrame.new(0,0,_0x726164697573)).Position
            local _0x70 = Instance.new("\80\97\114\116", _0x566973466f6c646572); _0x70.Anchored = true; _0x70.CanCollide = false; _0x70.Material = "\78\101\111\110"; _0x70.Color = Color3.new(0,1,1); _0x70.Transparency = 0.7; _0x70.Size = Vector3.new(0.2, 0.2, (_0x7031-_0x7032).Magnitude + 0.1); _0x70.CFrame = CFrame.new(_0x7031:Lerp(_0x7032, 0.5), _0x7032)
        end
    end
    _0x72696e67(CFrame.new(_0x706f73)); _0x72696e67(CFrame.new(_0x706f73)*CFrame.Angles(math.rad(90),0,0))
end
_0x416464546162("\65\85\84\79\32\75\73\76\76", function()
    local _0x626f78 = Instance.new("\84\101\120\116\66\111\120", _0x53696465436f6e74656e74); _0x626f78.Size = UDim2.new(1,0,0,28); _0x626f78.Text = "\68\105\115\116\58\32".._0x537461746573.KillDistance; _0x626f78.BackgroundColor3 = Color3.new(0,0,0); _0x626f78.TextColor3 = Color3.new(1,1,1); Instance.new("\85\73\67\111\114\110\101\114", _0x626f78)
    _0x626f78.FocusLost:Connect(function() _0x537461746573.KillDistance = tonumber(_0x626f78.Text:match("\37\100\43")) or 4; _0x626f78.Text = "\68\105\115\116\58\32".._0x537461746573.KillDistance end)
    _0x437265617465546f67676c65("\69\110\97\98\108\101\32\65\117\116\111\32\75\105\108\108", "\65\117\116\111\75\105\108\108")
end)
_0x416464546162("\75\73\76\76\32\65\85\82\65", function()
    local _0x626f78 = Instance.new("\84\101\120\116\66\111\120", _0x53696465436f6e74656e74); _0x626f78.Size = UDim2.new(1,0,0,28); _0x626f78.Text = "\82\97\110\103\101\58\32".._0x537461746573.AuraRange; _0x626f78.BackgroundColor3 = Color3.new(0,0,0); _0x626f78.TextColor3 = Color3.new(1,1,1); Instance.new("\85\73\67\111\114\110\101\114", _0x626f78)
    _0x626f78.FocusLost:Connect(function() _0x537461746573.AuraRange = tonumber(_0x626f78.Text:match("\37\100\43")) or 20; _0x626f78.Text = "\82\97\110\103\101\58\32".._0x537461746573.AuraRange end)
    _0x437265617465546f67676c65("\69\110\97\98\108\101\32\65\117\114\97", "\75\105\108\108\65\117\114\97")
    _0x437265617465546f67676c65("\65\116\116\97\99\107\32\68\101\97\100", "\65\116\116\97\99\107\68\101\97\100")
    _0x437265617465546f67676c65("\86\105\115\117\97\108\105\122\101\114\32\40\51\68\41", "\86\105\115\117\97\108\105\122\101\114")
end)
_0x416464546162("\85\83\69\70\85\76", function()
    local _0x6e7063 = Instance.new("\84\101\120\116\66\117\116\116\111\110", _0x53696465436f6e74656e74); _0x6e7063.Size = UDim2.new(1,0,0,28); _0x6e7063.Text = "\78\80\67\32\67\111\110\116\114\111\108\108\101\114\32\83\99\114\105\112\116"; _0x6e7063.BackgroundColor3 = Color3.fromRGB(100, 0, 200); _0x6e7063.TextColor3 = Color3.new(1,1,1); Instance.new("\85\73\67\111\114\110\101\114", _0x6e7063)
    _0x6e7063.MouseButton1Click:Connect(function() loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\114\97\110\100\111\109\115\116\114\105\110\103\48\47\102\101\45\115\111\117\114\99\101\47\114\101\102\115\47\104\101\97\100\115\47\109\97\105\110\47\78\80\67\47\115\111\117\114\99\101\47\109\97\105\110\46\76\117\97\117"))() end)
    _0x437265617465546f67676c65("\78\80\67\32\69\83\80", "\69\83\80")
    _0x437265617465546f67676c65("\69\83\80\32\78\97\109\101\115", "\69\83\80\78\97\109\101\115")
    _0x437265617465546f67676c65("\82\101\109\111\118\101\32\85\110\97\110\99\104\111\114\101\100", "\82\101\109\111\118\101\85\110\97\110\99\104\111\114\101\100")
end)
local _0x636163686564 = {}
task.spawn(function()
    while task.wait(0.5) do
        local _0x6e6577 = {}
        for _, v in pairs(workspace:GetDescendants()) do
            if v:IsA("\72\117\109\97\110\111\105\100") and v.Parent ~= _0x4c6f63616c506c617y.Character and not _0x506c6179657273:GetPlayerFromCharacter(v.Parent) then
                table.insert(_0x6e6577, v.Parent)
            end
        end
        _0x636163686564 = _0x6e6577
    end
end)
_0x52756e53657276.Heartbeat:Connect(function()
    local _0x63686172 = _0x4c6f63616c506c617y.Character; local _0x726f6f74 = _0x63686172 and _0x63686172:FindFirstChild("\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116")
    if not _0x726f6f74 then return end
    if _0x537461746573.Visualizer then _0x4472617756697375616c697a6572(_0x726f6f74.Position, _0x537461746573.AuraRange) else _0x566973466f6c646572:ClearAllChildren() end
    local _0x6e656172657374, _0x6d696e44697374 = nil, math.huge
    for _, _0x6e7063 in pairs(_0x636163686564) do
        local _0x68756d = _0x6e7063:FindFirstChildOfClass("\72\117\109\97\110\111\105\100")
        local _0x6e526f6f74 = _0x6e7063:FindFirstChild("\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116") or _0x6e7063:FindFirstChild("\72\101\97\100")
        if _0x68756d and _0x6e526f6f74 and (_0x68756d.Health > 0 or _0x537461746573.AttackDead) then
            local _0x64697374 = (_0x6e526f6f74.Position - _0x726f6f74.Position).Magnitude
            if _0x64697374 < _0x6d696e44697374 then _0x6d696e44697374 = _0x64697374; _0x6e656172657374 = _0x6e7063 end
            if _0x537461746573.ESP then
                local h = _0x6e7063:FindFirstChild("\69\83\80\72") or Instance.new("\72\105\103\104\108\105\103\104\116", _0x6e7063); h.Name = "\69\83\80\72"; h.FillColor = Color3.new(1,0,0)
                if _0x537461746573.ESPNames then
                    local t = _0x6e526f6f74:FindFirstChild("\69\83\80\84\97\103") or Instance.new("\66\105\108\108\98\111\97\114\100\71\117\105", _0x6e526f6f74); t.Name = "\69\83\80\84\97\103"; t.Size = UDim2.new(0,100,0,50); t.AlwaysOnTop = true; t.ExtentsOffset = Vector3.new(0,3,0)
                    local l = t:FindFirstChild("\76\97\98\101\108") or Instance.new("\84\101\120\116\76\97\98\101\108", t); l.Name = "\76\97\98\101\108"; l.BackgroundTransparency = 1; l.Size = UDim2.new(1,0,1,0); l.TextColor3 = Color3.new(1,1,1); l.Text = _0x6e7063.Name; l.Font = "\83\111\117\114\99\101\83\97\110\115\66\111\108\100"; l.TextSize = 12
                end
            else
                if _0x6e7063:FindFirstChild("\69\83\80\72") then _0x6e7063.ESPH:Destroy() end
                if _0x6e526f6f74:FindFirstChild("\69\83\80\84\97\103") then _0x6e526f6f74.ESPTag:Destroy() end
            end
        end
    end
    if _0x6e656172657374 then
        local _0x6e526f6f74 = _0x6e656172657374:FindFirstChild("\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116") or _0x6e656172657374:FindFirstChild("\72\101\97\100")
        if _0x537461746573.AutoKill and _0x6d696e44697374 < 500 then _0x726f6f74.CFrame = _0x6e526f6f74.CFrame * CFrame.new(0, _0x537461746573.KillDistance, 0) * CFrame.Angles(math.rad(-90), 0, 0) end
        if _0x537461746573.KillAura and _0x6d696e44697374 <= _0x537461746573.AuraRange then
            local _0x746f6f6c = _0x63686172:FindFirstChildOfClass("\84\111\111\108")
            if _0x746f6f6c and _0x746f6f6c:FindFirstChild("\72\97\110\100\108\101") then 
                _0x746f6f6c:Activate(); firetouchinterest(_0x746f6f6c.Handle, _0x6e526f6f74, 0); firetouchinterest(_0x746f6f6c.Handle, _0x6e526f6f74, 1)
            end
        end
    end
end)
_0x4d696e69.MouseButton1Click:Connect(function() _0x4d61696e.Visible = false; _0x536964654672616d65.Visible = false; _0x526573746f7265.Visible = true end)
_0x526573746f7265.MouseButton1Click:Connect(function() _0x4d61696e.Visible = true; _0x526573746f7265.Visible = false end)
_0x45786974.MouseButton1Click:Connect(function() _0x53637265656e477569:Destroy() end)
