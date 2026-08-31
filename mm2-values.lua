--========================================================--
--              MM2 SUPREME VALUES - V1                  --
--========================================================--
--  Single file
--  Blue UI
--  Search
--  Categories
--  Value / Demand / Rarity / Stability / Range
--  English names ONLY
--
--  TO UPDATE VALUES:
--  Go to the DATA section near the bottom and change:
--
--      value = 33
--
--  You can also change:
--
--      demand = 5
--      rarity = 5
--      stability = "Stable"
--      range = "33 - 35"
--
--========================================================--

local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

--========================================================--
-- COLORS
--========================================================--

local COLORS = {
    Background = Color3.fromRGB(7, 13, 25),
    Panel = Color3.fromRGB(11, 22, 40),
    Card = Color3.fromRGB(15, 31, 54),
    Blue = Color3.fromRGB(25, 115, 235),
    BlueLight = Color3.fromRGB(55, 145, 255),
    BlueDark = Color3.fromRGB(10, 55, 120),

    White = Color3.fromRGB(240, 247, 255),
    Gray = Color3.fromRGB(145, 165, 190),

    Green = Color3.fromRGB(70, 220, 125),
    Yellow = Color3.fromRGB(245, 205, 75),
    Red = Color3.fromRGB(235, 75, 85)
}

--========================================================--
-- DATA
--========================================================--
-- All names/categories intentionally remain in English.
-- Change values here every week or two.
--========================================================--

local ITEMS = {

    --====================================================--
    -- GODLY
    --====================================================--

    {
        name = "Darkbringer",
        category = "Godly",
        value = 33,
        demand = 5,
        rarity = 5,
        stability = "Stable",
        range = "33 - 35"
    },

    {
        name = "Red Luger",
        category = "Godly",
        value = 37,
        demand = 5,
        rarity = 5,
        stability = "Stable",
        range = "37 - 40"
    },

    {
        name = "Sugar",
        category = "Godly",
        value = 32,
        demand = 5,
        rarity = 5,
        stability = "Stable",
        range = "32 - 35"
    },

    {
        name = "Phantom",
        category = "Godly",
        value = 35,
        demand = 5,
        rarity = 5,
        stability = "Stable",
        range = "35 - 38"
    },

    {
        name = "Pumpking",
        category = "Godly",
        value = 7,
        demand = 3,
        rarity = 5,
        stability = "Stable",
        range = "7 - 8"
    },

    {
        name = "Virtual",
        category = "Godly",
        value = 13,
        demand = 4,
        rarity = 5,
        stability = "Stable",
        range = "13 - 15"
    },

    {
        name = "Constellation",
        category = "Godly",
        value = 2750,
        demand = 5,
        rarity = 5,
        stability = "Stable",
        range = "2750 - 3000"
    },

    {
        name = "Evergreen",
        category = "Godly",
        value = 2900,
        demand = 5,
        rarity = 5,
        stability = "Stable",
        range = "2900 - 3100"
    },

    {
        name = "Traveler's Gun",
        category = "Godly",
        value = 5600,
        demand = 5,
        rarity = 5,
        stability = "Stable",
        range = "5600 - 6000"
    },

    --====================================================--
    -- CHROMA
    --====================================================--

    {
        name = "Chroma Icecream",
        category = "Chroma",
        value = 1600,
        demand = 6,
        rarity = 4,
        stability = "Overpaid For",
        range = "1600 - 1800"
    },

    {
        name = "Chroma Sands",
        category = "Chroma",
        value = 1400,
        demand = 5,
        rarity = 4,
        stability = "Fluctuating",
        range = "1350 - 1450"
    },

    {
        name = "Chroma Beachy",
        category = "Chroma",
        value = 1350,
        demand = 5,
        rarity = 4,
        stability = "Fluctuating",
        range = "1300 - 1400"
    },

    {
        name = "Chroma Sweet",
        category = "Chroma",
        value = 1850,
        demand = 5,
        rarity = 4,
        stability = "Stable",
        range = "1800 - 2000"
    },

    {
        name = "Chroma Cookiecane",
        category = "Chroma",
        value = 32,
        demand = 5,
        rarity = 5,
        stability = "Stable",
        range = "32 - 35"
    },

    {
        name = "Chroma Elderwood Blade",
        category = "Chroma",
        value = 37,
        demand = 5,
        rarity = 5,
        stability = "Stable",
        range = "37 - 40"
    },

    {
        name = "Chroma Sunset",
        category = "Chroma",
        value = 8250,
        demand = 5,
        rarity = 5,
        stability = "Underpaid For",
        range = "8000 - 8500"
    },

    {
        name = "Chroma Snow Dagger",
        category = "Chroma",
        value = 2500,
        demand = 5,
        rarity = 5,
        stability = "Stable",
        range = "2500 - 2700"
    },

    {
        name = "Chroma Constellation",
        category = "Chroma",
        value = 31000,
        demand = 5,
        rarity = 5,
        stability = "Stable",
        range = "31000 - 33000"
    },

    --====================================================--
    -- ANCIENT
    --====================================================--

    {
        name = "Harvester",
        category = "Ancient",
        value = 250,
        demand = 5,
        rarity = 5,
        stability = "Stable",
        range = "250 - 270"
    },

    {
        name = "Elderwood Scythe",
        category = "Ancient",
        value = 38,
        demand = 5,
        rarity = 5,
        stability = "Stable",
        range = "38 - 40"
    },

    --====================================================--
    -- LEGENDARY
    --====================================================--

    {
        name = "Latte (Gun)",
        category = "Legendary",
        value = 140,
        demand = 3,
        rarity = 3,
        stability = "Stable",
        range = "140 - 150"
    },

    {
        name = "Vampire (Knife)",
        category = "Legendary",
        value = 3,
        demand = 2,
        rarity = 3,
        stability = "Stable",
        range = "3 - 4"
    },

    {
        name = "Beach",
        category = "Legendary",
        value = 35,
        demand = 3,
        rarity = 3,
        stability = "Stable",
        range = "35 - 40"
    },

    {
        name = "Aurora (Knife)",
        category = "Legendary",
        value = 3,
        demand = 2,
        rarity = 3,
        stability = "Stable",
        range = "3 - 4"
    },

    --====================================================--
    -- SETS
    --====================================================--

    {
        name = "Latte Set",
        category = "Sets",
        value = 280,
        demand = 4,
        rarity = 5,
        stability = "Stable",
        range = "280 - 300"
    },

    --====================================================--
    -- RARE
    --====================================================--

    {
        name = "Rare Example",
        category = "Rare",
        value = 1,
        demand = 1,
        rarity = 2,
        stability = "Stable",
        range = "1 - 1"
    },

    --====================================================--
    -- UNCOMMON
    --====================================================--

    {
        name = "Uncommon Example",
        category = "Uncommon",
        value = 1,
        demand = 1,
        rarity = 1,
        stability = "Stable",
        range = "1 - 1"
    },

    --====================================================--
    -- COMMON
    --====================================================--

    {
        name = "Sand",
        category = "Common",
        value = 2,
        demand = 1,
        rarity = 1,
        stability = "Stable",
        range = "2 - 2"
    },

    --====================================================--
    -- VINTAGE
    --====================================================--

    {
        name = "America",
        category = "Vintage",
        value = 1,
        demand = 1,
        rarity = 5,
        stability = "Stable",
        range = "1 - 1"
    },

    --====================================================--
    -- PETS
    --====================================================--

    {
        name = "Pet Example",
        category = "Pets",
        value = 1,
        demand = 1,
        rarity = 1,
        stability = "Stable",
        range = "1 - 1"
    },

    --====================================================--
    -- EVOS
    --====================================================--

    {
        name = "Synthwave",
        category = "Evo",
        value = 0,
        demand = 0,
        rarity = 5,
        stability = "Evo",
        range = "Evolution"
    },

}

--========================================================--
-- GUI CREATION
--========================================================--

local old = playerGui:FindFirstChild("SupremeValuesUI")

if old then
    old:Destroy()
end

local gui = Instance.new("ScreenGui")
gui.Name = "SupremeValuesUI"
gui.ResetOnSpawn = false
gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
gui.Parent = playerGui

--========================================================--
-- MAIN
--========================================================--

local main = Instance.new("Frame")
main.Name = "Main"
main.Size = UDim2.new(0, 760, 0, 570)
main.Position = UDim2.new(0.5, -380, 0.5, -285)
main.BackgroundColor3 = COLORS.Background
main.BorderSizePixel = 0
main.Parent = gui

local mainCorner = Instance.new("UICorner")
mainCorner.CornerRadius = UDim.new(0, 14)
mainCorner.Parent = main

local mainStroke = Instance.new("UIStroke")
mainStroke.Color = COLORS.Blue
mainStroke.Thickness = 2
mainStroke.Transparency = 0.25
mainStroke.Parent = main

--========================================================--
-- TOP BAR
--========================================================--

local top = Instance.new("Frame")
top.Size = UDim2.new(1, 0, 0, 65)
top.BackgroundColor3 = COLORS.Panel
top.BorderSizePixel = 0
top.Parent = main

local topCorner = Instance.new("UICorner")
topCorner.CornerRadius = UDim.new(0, 14)
topCorner.Parent = top

local title = Instance.new("TextLabel")
title.BackgroundTransparency = 1
title.Position = UDim2.new(0, 20, 0, 8)
title.Size = UDim2.new(1, -100, 0, 27)
title.Text = "MM2  •  SUPREME VALUES"
title.TextColor3 = COLORS.White
title.Font = Enum.Font.GothamBold
title.TextSize = 20
title.TextXAlignment = Enum.TextXAlignment.Left
title.Parent = top

local subtitle = Instance.new("TextLabel")
subtitle.BackgroundTransparency = 1
subtitle.Position = UDim2.new(0, 20, 0, 36)
subtitle.Size = UDim2.new(1, -100, 0, 18)
subtitle.Text = "English item database • Manual value updates"
subtitle.TextColor3 = COLORS.Gray
subtitle.Font = Enum.Font.Gotham
subtitle.TextSize = 11
subtitle.TextXAlignment = Enum.TextXAlignment.Left
subtitle.Parent = top

local close = Instance.new("TextButton")
close.Size = UDim2.new(0, 38, 0, 38)
close.Position = UDim2.new(1, -48, 0, 13)
close.BackgroundColor3 = Color3.fromRGB(185, 45, 55)
close.Text = "×"
close.TextColor3 = Color3.new(1,1,1)
close.Font = Enum.Font.GothamBold
close.TextSize = 25
close.BorderSizePixel = 0
close.Parent = top

local closeCorner = Instance.new("UICorner")
closeCorner.CornerRadius = UDim.new(0, 9)
closeCorner.Parent = close

close.MouseButton1Click:Connect(function()
    gui:Destroy()
end)

--========================================================--
-- SEARCH
--========================================================--

local search = Instance.new("TextBox")
search.Size = UDim2.new(1, -155, 0, 42)
search.Position = UDim2.new(0, 20, 0, 80)
search.BackgroundColor3 = COLORS.Card
search.BorderSizePixel = 0
search.PlaceholderText = "Search item..."
search.PlaceholderColor3 = COLORS.Gray
search.TextColor3 = COLORS.White
search.Text = ""
search.ClearTextOnFocus = false
search.Font = Enum.Font.Gotham
search.TextSize = 14
search.Parent = main

local searchCorner = Instance.new("UICorner")
searchCorner.CornerRadius = UDim.new(0, 10)
searchCorner.Parent = search

local searchStroke = Instance.new("UIStroke")
searchStroke.Color = COLORS.Blue
searchStroke.Transparency = 0.55
searchStroke.Parent = search

local searchButton = Instance.new("TextButton")
searchButton.Size = UDim2.new(0, 115, 0, 42)
searchButton.Position = UDim2.new(1, -135, 0, 80)
searchButton.BackgroundColor3 = COLORS.Blue
searchButton.BorderSizePixel = 0
searchButton.Text = "SEARCH"
searchButton.TextColor3 = Color3.new(1,1,1)
searchButton.Font = Enum.Font.GothamBold
searchButton.TextSize = 12
searchButton.Parent = main

local searchCorner2 = Instance.new("UICorner")
searchCorner2.CornerRadius = UDim.new(0, 10)
searchCorner2.Parent = searchButton

--========================================================--
-- CATEGORY BAR
--========================================================--

local categoryFrame = Instance.new("ScrollingFrame")
categoryFrame.Size = UDim2.new(1, -40, 0, 40)
categoryFrame.Position = UDim2.new(0, 20, 0, 132)
categoryFrame.BackgroundTransparency = 1
categoryFrame.BorderSizePixel = 0
categoryFrame.ScrollBarThickness = 2
categoryFrame.ScrollingDirection = Enum.ScrollingDirection.X
categoryFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
categoryFrame.Parent = main

local categoryLayout = Instance.new("UIListLayout")
categoryLayout.FillDirection = Enum.FillDirection.Horizontal
categoryLayout.Padding = UDim.new(0, 6)
categoryLayout.Parent = categoryFrame

local categories = {
    "All",
    "Evo",
    "Godly",
    "Chroma",
    "Ancient",
    "Legendary",
    "Vintage",
    "Rare",
    "Uncommon",
    "Common",
    "Sets",
    "Pets"
}

local categoryButtons = {}
local currentCategory = "All"

--========================================================--
-- ITEM LIST
--========================================================--

local list = Instance.new("ScrollingFrame")
list.Size = UDim2.new(1, -40, 1, -230)
list.Position = UDim2.new(0, 20, 0, 180)
list.BackgroundTransparency = 1
list.BorderSizePixel = 0
list.ScrollBarThickness = 5
list.ScrollBarImageColor3 = COLORS.Blue
list.CanvasSize = UDim2.new(0, 0, 0, 0)
list.Parent = main

local listLayout = Instance.new("UIListLayout")
listLayout.Padding = UDim.new(0, 8)
listLayout.SortOrder = Enum.SortOrder.LayoutOrder
listLayout.Parent = list

local listPadding = Instance.new("UIPadding")
listPadding.PaddingBottom = UDim.new(0, 15)
listPadding.Parent = list

--========================================================--
-- STATUS
--========================================================--

local status = Instance.new("TextLabel")
status.Size = UDim2.new(1, -155, 0, 25)
status.Position = UDim2.new(0, 20, 1, -48)
status.BackgroundTransparency = 1
status.TextColor3 = COLORS.Gray
status.Font = Enum.Font.Gotham
status.TextSize = 11
status.TextXAlignment = Enum.TextXAlignment.Left
status.Text = "Loading..."
status.Parent = main

local refresh = Instance.new("TextButton")
refresh.Size = UDim2.new(0, 115, 0, 32)
refresh.Position = UDim2.new(1, -135, 1, -50)
refresh.BackgroundColor3 = COLORS.BlueDark
refresh.BorderSizePixel = 0
refresh.Text = "↻ REFRESH"
refresh.TextColor3 = COLORS.White
refresh.Font = Enum.Font.GothamBold
refresh.TextSize = 11
refresh.Parent = main

local refreshCorner = Instance.new("UICorner")
refreshCorner.CornerRadius = UDim.new(0, 8)
refreshCorner.Parent = refresh

--========================================================--
-- HELPERS
--========================================================--

local function formatNumber(number)

    if number == nil then
        return "N/A"
    end

    if type(number) ~= "number" then
        return tostring(number)
    end

    local text = tostring(math.floor(number))

    while true do

        local newText, count = string.gsub(
            text,
            "^(-?%d+)(%d%d%d)",
            "%1,%2"
        )

        text = newText

        if count == 0 then
            break
        end

    end

    return text
end

local function clearList()

    for _, object in ipairs(list:GetChildren()) do

        if object:IsA("Frame") then
            object:Destroy()
        end

    end

end

local function getCategoryColor(category)

    if category == "Godly" then
        return Color3.fromRGB(255, 100, 220)

    elseif category == "Chroma" then
        return Color3.fromRGB(170, 100, 255)

    elseif category == "Ancient" then
        return Color3.fromRGB(255, 170, 70)

    elseif category == "Legendary" then
        return Color3.fromRGB(255, 80, 80)

    elseif category == "Vintage" then
        return Color3.fromRGB(210, 170, 80)

    elseif category == "Evo" then
        return Color3.fromRGB(90, 220, 255)

    elseif category == "Sets" then
        return Color3.fromRGB(100, 180, 255)

    else
        return COLORS.BlueLight
    end

end

--========================================================--
-- CREATE CARD
--========================================================--

local function createCard(item, index)

    local card = Instance.new("Frame")
    card.Size = UDim2.new(1, -5, 0, 90)
    card.BackgroundColor3 = COLORS.Card
    card.BorderSizePixel = 0
    card.LayoutOrder = index
    card.Parent = list

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 10)
    corner.Parent = card

    local stroke = Instance.new("UIStroke")
    stroke.Color = getCategoryColor(item.category)
    stroke.Transparency = 0.75
    stroke.Parent = card

    -- NAME
    local name = Instance.new("TextLabel")
    name.Size = UDim2.new(0.55, 0, 0, 27)
    name.Position = UDim2.new(0, 14, 0, 8)
    name.BackgroundTransparency = 1
    name.Text = item.name
    name.TextColor3 = COLORS.White
    name.Font = Enum.Font.GothamBold
    name.TextSize = 15
    name.TextXAlignment = Enum.TextXAlignment.Left
    name.TextTruncate = Enum.TextTruncate.AtEnd
    name.Parent = card

    -- CATEGORY
    local category = Instance.new("TextLabel")
    category.Size = UDim2.new(0.35, 0, 0, 18)
    category.Position = UDim2.new(0, 14, 0, 38)
    category.BackgroundTransparency = 1
    category.Text = item.category
    category.TextColor3 = getCategoryColor(item.category)
    category.Font = Enum.Font.GothamBold
    category.TextSize = 11
    category.TextXAlignment = Enum.TextXAlignment.Left
    category.Parent = card

    -- VALUE
    local value = Instance.new("TextLabel")
    value.Size = UDim2.new(0.42, -15, 0, 28)
    value.Position = UDim2.new(0.58, 0, 0, 7)
    value.BackgroundTransparency = 1
    value.Text = "VALUE  " .. formatNumber(item.value)
    value.TextColor3 = COLORS.Green
    value.Font = Enum.Font.GothamBold
    value.TextSize = 17
    value.TextXAlignment = Enum.TextXAlignment.Right
    value.Parent = card

    -- STATS
    local stats = Instance.new("TextLabel")
    stats.Size = UDim2.new(0.55, -15, 0, 22)
    stats.Position = UDim2.new(0.45, 0, 0, 38)
    stats.BackgroundTransparency = 1

    stats.Text =
        "Demand: " .. tostring(item.demand)
        .. "   •   Rarity: " .. tostring(item.rarity)

    stats.TextColor3 = COLORS.Gray
    stats.Font = Enum.Font.Gotham
    stats.TextSize = 10
    stats.TextXAlignment = Enum.TextXAlignment.Right
    stats.Parent = card

    -- RANGE / STABILITY
    local extra = Instance.new("TextLabel")
    extra.Size = UDim2.new(1, -28, 0, 18)
    extra.Position = UDim2.new(0, 14, 0, 66)
    extra.BackgroundTransparency = 1

    extra.Text =
        "Range: " .. tostring(item.range)
        .. "    •    Stability: "
        .. tostring(item.stability)

    extra.TextColor3 = COLORS.Gray
    extra.Font = Enum.Font.Gotham
    extra.TextSize = 10
    extra.TextXAlignment = Enum.TextXAlignment.Left
    extra.TextTruncate = Enum.TextTruncate.AtEnd
    extra.Parent = card

end

--========================================================--
-- SORT
--========================================================--

local function sortItems(items)

    local copy = {}

    for _, item in ipairs(items) do
        table.insert(copy, item)
    end

    table.sort(copy, function(a, b)

        local av = tonumber(a.value) or 0
        local bv = tonumber(b.value) or 0

        return av > bv

    end)

    return copy

end

--========================================================--
-- REFRESH LIST
--========================================================--

local function refreshList()

    clearList()

    local query = string.lower(search.Text or "")
    local count = 0

    local sorted = sortItems(ITEMS)

    for _, item in ipairs(sorted) do

        local itemName = string.lower(item.name)
        local itemCategory = string.lower(item.category)

        local searchMatch =
            query == ""
            or string.find(itemName, query, 1, true)
            or string.find(itemCategory, query, 1, true)

        local categoryMatch =
            currentCategory == "All"
            or item.category == currentCategory

        if searchMatch and categoryMatch then

            count = count + 1
            createCard(item, count)

        end

    end

    task.wait()

    list.CanvasSize = UDim2.new(
        0,
        0,
        0,
        listLayout.AbsoluteContentSize.Y + 20
    )

    status.Text =
        tostring(count)
        .. " items • "
        .. currentCategory
        .. " • Supreme Values database"

end

--========================================================--
-- CATEGORY BUTTONS
--========================================================--

for _, categoryName in ipairs(categories) do

    local button = Instance.new("TextButton")

    button.Size = UDim2.new(0, 82, 0, 34)
    button.BackgroundColor3 =
        categoryName == "All"
        and COLORS.Blue
        or COLORS.Card

    button.BorderSizePixel = 0
    button.Text = categoryName
    button.TextColor3 = COLORS.White
    button.Font = Enum.Font.GothamBold
    button.TextSize = 10
    button.Parent = categoryFrame

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 8)
    corner.Parent = button

    categoryButtons[categoryName] = button

    button.MouseButton1Click:Connect(function()

        currentCategory = categoryName

        for name, otherButton in pairs(categoryButtons) do

            if name == currentCategory then
                otherButton.BackgroundColor3 = COLORS.Blue
            else
                otherButton.BackgroundColor3 = COLORS.Card
            end

        end

        refreshList()

    end)

end

categoryLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()

    categoryFrame.CanvasSize = UDim2.new(
        0,
        categoryLayout.AbsoluteContentSize.X + 15,
        0,
        0
    )

end)

--========================================================--
-- SEARCH
--========================================================--

search:GetPropertyChangedSignal("Text"):Connect(function()
    refreshList()
end)

searchButton.MouseButton1Click:Connect(function()
    refreshList()
end)

--========================================================--
-- REFRESH BUTTON
--========================================================--

refresh.MouseButton1Click:Connect(function()

    refresh.Text = "UPDATED"

    refreshList()

    task.wait(0.8)

    refresh.Text = "↻ REFRESH"

end)

--========================================================--
-- DRAG SYSTEM
--========================================================--

local dragging = false
local dragStart
local startPosition

top.InputBegan:Connect(function(input)

    if input.UserInputType == Enum.UserInputType.MouseButton1
        or input.UserInputType == Enum.UserInputType.Touch then

        dragging = true
        dragStart = input.Position
        startPosition = main.Position

        input.Changed:Connect(function()

            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end

        end)

    end

end)

UserInputService.InputChanged:Connect(function(input)

    if not dragging then
        return
    end

    if input.UserInputType == Enum.UserInputType.MouseMovement
        or input.UserInputType == Enum.UserInputType.Touch then

        local delta = input.Position - dragStart

        main.Position = UDim2.new(
            startPosition.X.Scale,
            startPosition.X.Offset + delta.X,
            startPosition.Y.Scale,
            startPosition.Y.Offset + delta.Y
        )

    end

end)

--========================================================--
-- MOBILE
--========================================================--

if UserInputService.TouchEnabled then

    main.Size = UDim2.new(0.94, 0, 0.84, 0)
    main.Position = UDim2.new(0.03, 0, 0.08, 0)

end

--========================================================--
-- START
--========================================================--

refreshList()

print("[MM2 Supreme Values] Loaded successfully.")
print("[MM2 Supreme Values] Items:", #ITEMS)
