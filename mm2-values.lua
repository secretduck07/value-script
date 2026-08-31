--[[
    MM2 SUPREME VALUES UI
    Single-script version

    Features:
    - Blue UI
    - Search weapons
    - Categories
    - Value / Demand / Rarity / Range
    - Refresh button
    - Scrolling item list
    - Mobile-friendly
]]

--// SERVICES
local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")
local UserInputService = game:GetService("UserInputService")

local Player = Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")

--// CONFIG
local DATA_URL = "https://raw.githubusercontent.com/timez170/mm2-values/main/values.json"

local BLUE = Color3.fromRGB(25, 110, 220)
local DARK_BLUE = Color3.fromRGB(10, 25, 50)
local LIGHT_BLUE = Color3.fromRGB(45, 140, 255)
local BG = Color3.fromRGB(8, 15, 28)
local CARD = Color3.fromRGB(15, 28, 48)
local TEXT = Color3.fromRGB(235, 245, 255)
local MUTED = Color3.fromRGB(145, 170, 200)

--// DATA
local Items = {}
local CurrentCategory = "All"
local SearchText = ""

--// GUI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "MM2SupremeValues"
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = PlayerGui

-- Main
local Main = Instance.new("Frame")
Main.Name = "Main"
Main.Size = UDim2.new(0, 720, 0, 560)
Main.Position = UDim2.new(0.5, -360, 0.5, -280)
Main.BackgroundColor3 = BG
Main.BorderSizePixel = 0
Main.Parent = ScreenGui

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 14)
MainCorner.Parent = Main

local Stroke = Instance.new("UIStroke")
Stroke.Color = BLUE
Stroke.Thickness = 2
Stroke.Transparency = 0.25
Stroke.Parent = Main

--// TOP BAR
local TopBar = Instance.new("Frame")
TopBar.Size = UDim2.new(1, 0, 0, 62)
TopBar.BackgroundColor3 = DARK_BLUE
TopBar.BorderSizePixel = 0
TopBar.Parent = Main

local TopCorner = Instance.new("UICorner")
TopCorner.CornerRadius = UDim.new(0, 14)
TopCorner.Parent = TopBar

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, -140, 0, 30)
Title.Position = UDim2.new(0, 20, 0, 8)
Title.BackgroundTransparency = 1
Title.Text = "MM2  •  SUPREME VALUES"
Title.TextColor3 = TEXT
Title.Font = Enum.Font.GothamBold
Title.TextSize = 20
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.Parent = TopBar

local Status = Instance.new("TextLabel")
Status.Size = UDim2.new(1, -160, 0, 20)
Status.Position = UDim2.new(0, 20, 0, 35)
Status.BackgroundTransparency = 1
Status.Text = "Loading values..."
Status.TextColor3 = MUTED
Status.Font = Enum.Font.Gotham
Status.TextSize = 12
Status.TextXAlignment = Enum.TextXAlignment.Left
Status.Parent = TopBar

-- Close
local Close = Instance.new("TextButton")
Close.Size = UDim2.new(0, 40, 0, 40)
Close.Position = UDim2.new(1, -50, 0, 11)
Close.BackgroundColor3 = Color3.fromRGB(180, 45, 55)
Close.Text = "×"
Close.TextColor3 = Color3.new(1,1,1)
Close.Font = Enum.Font.GothamBold
Close.TextSize = 25
Close.Parent = TopBar

local CloseCorner = Instance.new("UICorner")
CloseCorner.CornerRadius = UDim.new(0, 10)
CloseCorner.Parent = Close

Close.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

--// SEARCH
local SearchBox = Instance.new("TextBox")
SearchBox.Size = UDim2.new(1, -150, 0, 42)
SearchBox.Position = UDim2.new(0, 20, 0, 78)
SearchBox.BackgroundColor3 = CARD
SearchBox.BorderSizePixel = 0
SearchBox.PlaceholderText = "Search for a weapon..."
SearchBox.PlaceholderColor3 = MUTED
SearchBox.Text = ""
SearchBox.TextColor3 = TEXT
SearchBox.Font = Enum.Font.Gotham
SearchBox.TextSize = 14
SearchBox.ClearTextOnFocus = false
SearchBox.Parent = Main

local SearchCorner = Instance.new("UICorner")
SearchCorner.CornerRadius = UDim.new(0, 10)
SearchCorner.Parent = SearchBox

local SearchStroke = Instance.new("UIStroke")
SearchStroke.Color = BLUE
SearchStroke.Transparency = 0.6
SearchStroke.Parent = SearchBox

-- Search button
local SearchButton = Instance.new("TextButton")
SearchButton.Size = UDim2.new(0, 110, 0, 42)
SearchButton.Position = UDim2.new(1, -130, 0, 78)
SearchButton.BackgroundColor3 = BLUE
SearchButton.BorderSizePixel = 0
SearchButton.Text = "SEARCH"
SearchButton.TextColor3 = Color3.new(1,1,1)
SearchButton.Font = Enum.Font.GothamBold
SearchButton.TextSize = 13
SearchButton.Parent = Main

local SearchCorner2 = Instance.new("UICorner")
SearchCorner2.CornerRadius = UDim.new(0, 10)
SearchCorner2.Parent = SearchButton

--// CATEGORY BAR
local CategoryFrame = Instance.new("ScrollingFrame")
CategoryFrame.Size = UDim2.new(1, -40, 0, 42)
CategoryFrame.Position = UDim2.new(0, 20, 0, 130)
CategoryFrame.BackgroundTransparency = 1
CategoryFrame.BorderSizePixel = 0
CategoryFrame.ScrollBarThickness = 3
CategoryFrame.ScrollingDirection = Enum.ScrollingDirection.X
CategoryFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
CategoryFrame.Parent = Main

local CategoryLayout = Instance.new("UIListLayout")
CategoryLayout.FillDirection = Enum.FillDirection.Horizontal
CategoryLayout.Padding = UDim.new(0, 7)
CategoryLayout.SortOrder = Enum.SortOrder.LayoutOrder
CategoryLayout.Parent = CategoryFrame

local Categories = {
    "All",
    "Evo",
    "Godly",
    "Chroma",
    "Ancient",
    "Legendary",
    "Rare",
    "Uncommon",
    "Common",
    "Vintage",
    "Sets",
    "Pets"
}

local CategoryButtons = {}

--// LIST
local List = Instance.new("ScrollingFrame")
List.Name = "ItemList"
List.Size = UDim2.new(1, -40, 1, -190)
List.Position = UDim2.new(0, 20, 0, 180)
List.BackgroundTransparency = 1
List.BorderSizePixel = 0
List.ScrollBarThickness = 5
List.ScrollBarImageColor3 = BLUE
List.CanvasSize = UDim2.new(0, 0, 0, 0)
List.Parent = Main

local ListLayout = Instance.new("UIListLayout")
ListLayout.Padding = UDim.new(0, 8)
ListLayout.SortOrder = Enum.SortOrder.LayoutOrder
ListLayout.Parent = List

local ListPadding = Instance.new("UIPadding")
ListPadding.PaddingBottom = UDim.new(0, 10)
ListPadding.Parent = List

--// REFRESH BUTTON
local Refresh = Instance.new("TextButton")
Refresh.Size = UDim2.new(0, 105, 0, 32)
Refresh.Position = UDim2.new(1, -125, 1, -42)
Refresh.BackgroundColor3 = BLUE
Refresh.BorderSizePixel = 0
Refresh.Text = "↻ REFRESH"
Refresh.TextColor3 = Color3.new(1,1,1)
Refresh.Font = Enum.Font.GothamBold
Refresh.TextSize = 12
Refresh.Parent = Main

local RefreshCorner = Instance.new("UICorner")
RefreshCorner.CornerRadius = UDim.new(0, 8)
RefreshCorner.Parent = Refresh

--// HELPERS

local function GetCategory(item)
    local category = string.lower(tostring(
        item.category
        or item.type
        or item.rarityName
        or item.tier
        or ""
    ))

    local name = string.lower(tostring(item.name or ""))

    if string.find(category, "chroma") or string.find(name, "chroma") then
        return "Chroma"
    elseif string.find(category, "godly") then
        return "Godly"
    elseif string.find(category, "ancient") then
        return "Ancient"
    elseif string.find(category, "legendary") then
        return "Legendary"
    elseif string.find(category, "vintage") then
        return "Vintage"
    elseif string.find(category, "rare") then
        return "Rare"
    elseif string.find(category, "uncommon") then
        return "Uncommon"
    elseif string.find(category, "common") then
        return "Common"
    elseif string.find(category, "pet") then
        return "Pets"
    elseif string.find(category, "evo") or string.find(name, "evo") then
        return "Evo"
    elseif string.find(category, "set") then
        return "Sets"
    end

    return "All"
end

local function FormatNumber(number)
    number = tonumber(number)

    if not number then
        return "N/A"
    end

    local formatted = tostring(math.floor(number))

    while true do
        local new, count = string.gsub(formatted, "^(-?%d+)(%d%d%d)", "%1,%2")
        formatted = new
        if count == 0 then
            break
        end
    end

    return formatted
end

local function ClearList()
    for _, child in ipairs(List:GetChildren()) do
        if child:IsA("Frame") then
            child:Destroy()
        end
    end
end

local function MakeItemCard(item, index)
    local Card = Instance.new("Frame")
    Card.Size = UDim2.new(1, -5, 0, 82)
    Card.BackgroundColor3 = CARD
    Card.BorderSizePixel = 0
    Card.LayoutOrder = index
    Card.Parent = List

    local Corner = Instance.new("UICorner")
    Corner.CornerRadius = UDim.new(0, 10)
    Corner.Parent = Card

    local CardStroke = Instance.new("UIStroke")
    CardStroke.Color = BLUE
    CardStroke.Transparency = 0.82
    CardStroke.Parent = Card

    -- Name
    local Name = Instance.new("TextLabel")
    Name.Size = UDim2.new(0.48, 0, 0, 25)
    Name.Position = UDim2.new(0, 14, 0, 9)
    Name.BackgroundTransparency = 1
    Name.Text = tostring(item.name or "Unknown")
    Name.TextColor3 = TEXT
    Name.Font = Enum.Font.GothamBold
    Name.TextSize = 15
    Name.TextXAlignment = Enum.TextXAlignment.Left
    Name.TextTruncate = Enum.TextTruncate.AtEnd
    Name.Parent = Card

    -- Category
    local Category = Instance.new("TextLabel")
    Category.Size = UDim2.new(0.35, 0, 0, 18)
    Category.Position = UDim2.new(0, 14, 0, 39)
    Category.BackgroundTransparency = 1
    Category.Text = GetCategory(item)
    Category.TextColor3 = LIGHT_BLUE
    Category.Font = Enum.Font.Gotham
    Category.TextSize = 12
    Category.TextXAlignment = Enum.TextXAlignment.Left
    Category.Parent = Card

    -- Stats
    local Stats = Instance.new("TextLabel")
    Stats.Size = UDim2.new(0.52, -10, 0, 20)
    Stats.Position = UDim2.new(0.48, 0, 0, 37)
    Stats.BackgroundTransparency = 1

    local demand = item.demand or item.Demand or "N/A"
    local rarity = item.rarity or item.Rarity or "N/A"
    local stability = item.stability or item.trend or item.Stability or "N/A"

    Stats.Text = "Demand: " .. tostring(demand)
        .. "   •   Rarity: " .. tostring(rarity)
        .. "   •   " .. tostring(stability)

    Stats.TextColor3 = MUTED
    Stats.Font = Enum.Font.Gotham
    Stats.TextSize = 11
    Stats.TextXAlignment = Enum.TextXAlignment.Right
    Stats.TextTruncate = Enum.TextTruncate.AtEnd
    Stats.Parent = Card

    -- Value
    local Value = Instance.new("TextLabel")
    Value.Size = UDim2.new(0.45, -10, 0, 30)
    Value.Position = UDim2.new(0.55, 0, 0, 8)
    Value.BackgroundTransparency = 1
    Value.Text = "💰 " .. FormatNumber(
        item.value
        or item.Value
        or item.val
    )
    Value.TextColor3 = Color3.fromRGB(70, 210, 120)
    Value.Font = Enum.Font.GothamBold
    Value.TextSize = 18
    Value.TextXAlignment = Enum.TextXAlignment.Right
    Value.Parent = Card

    -- Range
    local range = item.range or item.Range

    if range then
        local Range = Instance.new("TextLabel")
        Range.Size = UDim2.new(0.45, -10, 0, 17)
        Range.Position = UDim2.new(0.55, 0, 0, 57)
        Range.BackgroundTransparency = 1
        Range.Text = "Range: " .. tostring(range)
        Range.TextColor3 = MUTED
        Range.Font = Enum.Font.Gotham
        Range.TextSize = 10
        Range.TextXAlignment = Enum.TextXAlignment.Right
        Range.Parent = Card
    end
end

--// FILTER
local function RefreshList()
    ClearList()

    local query = string.lower(SearchText or "")
    local count = 0

    for _, item in ipairs(Items) do
        local name = string.lower(tostring(item.name or ""))
        local category = GetCategory(item)

        local matchesSearch =
            query == ""
            or string.find(name, query, 1, true)

        local matchesCategory =
            CurrentCategory == "All"
            or category == CurrentCategory

        if matchesSearch and matchesCategory then
            count += 1
            MakeItemCard(item, count)
        end
    end

    task.wait()

    List.CanvasSize = UDim2.new(
        0,
        0,
        0,
        ListLayout.AbsoluteContentSize.Y + 15
    )

    Status.Text = tostring(count) .. " items found • Category: " .. CurrentCategory
end

--// CATEGORY BUTTONS
for index, category in ipairs(Categories) do
    local Button = Instance.new("TextButton")
    Button.Size = UDim2.new(0, 82, 0, 34)
    Button.BackgroundColor3 =
        category == "All" and BLUE or CARD
    Button.BorderSizePixel = 0
    Button.Text = category
    Button.TextColor3 = TEXT
    Button.Font = Enum.Font.GothamBold
    Button.TextSize = 11
    Button.LayoutOrder = index
    Button.Parent = CategoryFrame

    local Corner = Instance.new("UICorner")
    Corner.CornerRadius = UDim.new(0, 8)
    Corner.Parent = Button

    CategoryButtons[category] = Button

    Button.MouseButton1Click:Connect(function()
        CurrentCategory = category

        for name, btn in pairs(CategoryButtons) do
            btn.BackgroundColor3 =
                name == category and BLUE or CARD
        end

        RefreshList()
    end)
end

CategoryLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    CategoryFrame.CanvasSize = UDim2.new(
        0,
        CategoryLayout.AbsoluteContentSize.X + 10,
        0,
        0
    )
end)

--// SEARCH
local function DoSearch()
    SearchText = SearchBox.Text
    RefreshList()
end

SearchButton.MouseButton1Click:Connect(DoSearch)

SearchBox.FocusLost:Connect(function()
    DoSearch()
end)

SearchBox:GetPropertyChangedSignal("Text"):Connect(function()
    SearchText = SearchBox.Text
    RefreshList()
end)

--// LOAD DATA
local function LoadData()
    Status.Text = "Downloading Supreme Values..."

    local success, result = pcall(function()
        return game:HttpGet(DATA_URL)
    end)

    if not success then
        Status.Text = "Unable to load values."
        warn("[MM2 Values] HTTP error:", result)
        return
    end

    local decodeSuccess, decoded = pcall(function()
        return HttpService:JSONDecode(result)
    end)

    if not decodeSuccess then
        Status.Text = "Invalid values data."
        warn("[MM2 Values] JSON error:", decoded)
        return
    end

    if typeof(decoded) ~= "table" then
        Status.Text = "Invalid data format."
        return
    end

    Items = {}

    -- Supports:
    -- [ {name="...", value=123} ]
    -- OR
    -- {items={...}}
    -- OR
    -- {"ItemName"={value=123}}

    local source = decoded.items or decoded

    for key, item in pairs(source) do
        if type(item) == "table" then
            if item.name == nil then
                item.name = tostring(key)
            end

            table.insert(Items, item)
        end
    end

    table.sort(Items, function(a, b)
        local av = tonumber(a.value or a.Value or 0) or 0
        local bv = tonumber(b.value or b.Value or 0) or 0
        return av > bv
    end)

    Status.Text = "Values loaded • " .. tostring(#Items) .. " items"

    RefreshList()
end

--// REFRESH
Refresh.MouseButton1Click:Connect(function()
    Refresh.Text = "LOADING..."
    Refresh.Active = false

    task.spawn(function()
        LoadData()

        task.wait(0.5)

        Refresh.Text = "↻ REFRESH"
        Refresh.Active = true
    end)
end)

--// DRAGGING
local dragging = false
local dragStart
local startPosition

TopBar.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1
        or input.UserInputType == Enum.UserInputType.Touch then

        dragging = true
        dragStart = input.Position
        startPosition = Main.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if dragging and (
        input.UserInputType == Enum.UserInputType.MouseMovement
        or input.UserInputType == Enum.UserInputType.Touch
    ) then

        local delta = input.Position - dragStart

        Main.Position = UDim2.new(
            startPosition.X.Scale,
            startPosition.X.Offset + delta.X,
            startPosition.Y.Scale,
            startPosition.Y.Offset + delta.Y
        )
    end
end)

--// RESPONSIVE SIZE
if UserInputService.TouchEnabled then
    Main.Size = UDim2.new(0.92, 0, 0.82, 0)
    Main.Position = UDim2.new(0.04, 0, 0.09, 0)
end

--// START
task.spawn(function()
    LoadData()
end)
