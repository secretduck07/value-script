--==============================================================--
--                 MM2 SUPREME VALUES UI                       --
--                         values.lua                           --
--==============================================================--
-- Features:
--  • Blue modern UI
--  • Search
--  • Categories
--  • Value
--  • Demand
--  • Rarity
--  • Stability
--  • Range
--  • Origin
--  • Item details
--  • Minimize / restore
--  • Close confirmation
--  • High DisplayOrder
--  • English names/categories only
--  • Easy weekly value editing
--
-- IMPORTANT:
-- Edit ONLY the DATA section when you want to update values.
--==============================================================--

local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")

local Player = Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")

--==============================================================--
-- CLEAN OLD UI
--==============================================================--

local oldUI = PlayerGui:FindFirstChild("MM2SupremeValues")

if oldUI then
    oldUI:Destroy()
end

--==============================================================--
-- SETTINGS
--==============================================================--

local SETTINGS = {
    DisplayOrder = 999999,

    MainWidth = 780,
    MainHeight = 590,

    MobileWidth = 0.94,
    MobileHeight = 0.84,

    Title = "MM2 • SUPREME VALUES",
    Subtitle = "Murder Mystery 2 • English Value Database"
}

--==============================================================--
-- COLORS
--==============================================================--

local COLORS = {
    Background = Color3.fromRGB(7, 13, 25),
    Panel = Color3.fromRGB(10, 22, 40),
    Card = Color3.fromRGB(14, 30, 52),
    CardHover = Color3.fromRGB(20, 42, 70),

    Blue = Color3.fromRGB(25, 115, 235),
    BlueLight = Color3.fromRGB(60, 150, 255),
    BlueDark = Color3.fromRGB(10, 55, 115),

    White = Color3.fromRGB(240, 247, 255),
    Gray = Color3.fromRGB(145, 165, 190),

    Green = Color3.fromRGB(70, 220, 125),
    Yellow = Color3.fromRGB(245, 205, 75),
    Red = Color3.fromRGB(235, 75, 85),

    Purple = Color3.fromRGB(175, 100, 255),
    Pink = Color3.fromRGB(255, 100, 210),
    Orange = Color3.fromRGB(255, 165, 70)
}

--==============================================================--
-- DATA
--==============================================================--
-- UPDATE THIS SECTION.
--
-- value MUST be a number.
-- If Supreme Values says Range = N/A, simply use:
-- range = "N/A"
--
-- Do NOT put "N/A" in value.
--==============================================================--

local ITEMS = {

    --==========================================================--
    -- GODLIES
    --==========================================================--

    {
        name = "Traveler's Gun",
        category = "Godly",
        value = 5600,
        range = "N/A",
        stability = "Stable",
        demand = 5,
        rarity = 5,
        origin = "Halloween 2023 (Unboxed)"
    },

    {
        name = "Evergreen",
        category = "Godly",
        value = 2900,
        range = "2,900 - 3,000",
        stability = "Overpaid For",
        demand = 5,
        rarity = 5,
        origin = "Christmas 2023 (Unboxed)"
    },

    {
        name = "Constellation",
        category = "Godly",
        value = 2750,
        range = "N/A",
        stability = "Stable",
        demand = 5,
        rarity = 5,
        origin = "Christmas 2024 (Unboxed)"
    },

    {
        name = "Alienbeam",
        category = "Godly",
        value = 2550,
        range = "2,450 - 2,550",
        stability = "Receding",
        demand = 5,
        rarity = 5,
        origin = "Halloween 2025 (Unboxed)"
    },

    {
        name = "Turkey",
        category = "Godly",
        value = 2350,
        range = "2,300 - 2,350",
        stability = "Underpaid For",
        demand = 5,
        rarity = 5,
        origin = "Thanksgiving 2024"
    },

    {
        name = "Vampire's Gun",
        category = "Godly",
        value = 2050,
        range = "N/A",
        stability = "Stable",
        demand = 5,
        rarity = 5,
        origin = "Halloween 2025"
    },

    {
        name = "Sunrise",
        category = "Godly",
        value = 1350,
        range = "1,350 - 1,400",
        stability = "Doing Well",
        demand = 5,
        rarity = 5,
        origin = "Summer 2025"
    },

    {
        name = "Sunset",
        category = "Godly",
        value = 800,
        range = "800 - 850",
        stability = "Doing Well",
        demand = 5,
        rarity = 5,
        origin = "Summer 2025"
    },

    {
        name = "Snowcannon",
        category = "Godly",
        value = 825,
        range = "N/A",
        stability = "Stable",
        demand = 5,
        rarity = 5,
        origin = "Christmas 2024"
    },

    {
        name = "Bauble",
        category = "Godly",
        value = 800,
        range = "N/A",
        stability = "Stable",
        demand = 5,
        rarity = 5,
        origin = "Christmas 2024"
    },

    {
        name = "Red Luger",
        category = "Godly",
        value = 37,
        range = "N/A",
        stability = "Stable",
        demand = 1,
        rarity = 2,
        origin = "Christmas 2015 (Crafting)"
    },

    {
        name = "Phantom",
        category = "Godly",
        value = 35,
        range = "N/A",
        stability = "Stable",
        demand = 1,
        rarity = 2,
        origin = "Halloween 2022 (Item Pack)"
    },

    {
        name = "Spectre",
        category = "Godly",
        value = 35,
        range = "N/A",
        stability = "Stable",
        demand = 1,
        rarity = 2,
        origin = "Halloween 2022 (Item Pack)"
    },

    {
        name = "Candleflame",
        category = "Godly",
        value = 33,
        range = "N/A",
        stability = "Stable",
        demand = 1,
        rarity = 2,
        origin = "Halloween 2021 (Unboxed)"
    },

    {
        name = "Darkbringer",
        category = "Godly",
        value = 33,
        range = "N/A",
        stability = "Stable",
        demand = 1,
        rarity = 2,
        origin = "Mystery Crate #2"
    },

    {
        name = "Elderwood Blade",
        category = "Godly",
        value = 33,
        range = "N/A",
        stability = "Stable",
        demand = 1,
        rarity = 2,
        origin = "Halloween 2022 (Unboxed)"
    },

    {
        name = "Elderwood Revolver",
        category = "Godly",
        value = 33,
        range = "N/A",
        stability = "Stable",
        demand = 1,
        rarity = 2,
        origin = "Halloween 2019 (Unboxed)"
    },

    {
        name = "Iceblaster",
        category = "Godly",
        value = 33,
        range = "N/A",
        stability = "Stable",
        demand = 1,
        rarity = 2,
        origin = "Christmas 2020 (Unboxed)"
    },

    {
        name = "Lightbringer",
        category = "Godly",
        value = 33,
        range = "N/A",
        stability = "Stable",
        demand = 1,
        rarity = 2,
        origin = "Mystery Crate #2"
    },

    {
        name = "Laser",
        category = "Godly",
        value = 22,
        range = "N/A",
        stability = "Stable",
        demand = 1,
        rarity = 2,
        origin = "Gun Box #3"
    },

    {
        name = "Luger",
        category = "Godly",
        value = 22,
        range = "20 - 22",
        stability = "Underpaid For",
        demand = 1,
        rarity = 2,
        origin = "Gun Box #1"
    },

    {
        name = "Hallowgun",
        category = "Godly",
        value = 20,
        range = "N/A",
        stability = "Stable",
        demand = 1,
        rarity = 2,
        origin = "Halloween 2020 (Unboxed)"
    },

    {
        name = "Nightblade",
        category = "Godly",
        value = 20,
        range = "N/A",
        stability = "Stable",
        demand = 1,
        rarity = 2,
        origin = "Shadow Item Pack"
    },

    {
        name = "Shark",
        category = "Godly",
        value = 20,
        range = "N/A",
        stability = "Stable",
        demand = 1,
        rarity = 2,
        origin = "Gun Box #2"
    },

    --==========================================================--
    -- CHROMAS
    --==========================================================--

    {
        name = "Chroma Traveler's Gun",
        category = "Chroma",
        value = 220000,
        range = "N/A",
        stability = "Stable",
        demand = 9,
        rarity = 10,
        origin = "Halloween 2023 (Unboxed)"
    },

    {
        name = "Chroma Evergun",
        category = "Chroma",
        value = 75000,
        range = "N/A",
        stability = "Stable",
        demand = 8,
        rarity = 8,
        origin = "Christmas 2023 (Gifting)"
    },

    {
        name = "Chroma Evergreen",
        category = "Chroma",
        value = 48000,
        range = "N/A",
        stability = "Stable",
        demand = 7,
        rarity = 7,
        origin = "Christmas 2023 (Unboxed)"
    },

    {
        name = "Chroma Bauble",
        category = "Chroma",
        value = 34000,
        range = "N/A",
        stability = "Stable",
        demand = 7,
        rarity = 6,
        origin = "Christmas 2024 (Gifting)"
    },

    {
        name = "Chroma Constellation",
        category = "Chroma",
        value = 32000,
        range = "32,000 - 33,000",
        stability = "Doing Well",
        demand = 7,
        rarity = 6,
        origin = "Christmas 2024 (Unboxed)"
    },

    {
        name = "Chroma Vampire's Gun",
        category = "Chroma",
        value = 29000,
        range = "N/A",
        stability = "Stable",
        demand = 7,
        rarity = 6,
        origin = "Halloween 2024 (Unboxed)"
    },

    {
        name = "Chroma Alienbeam",
        category = "Chroma",
        value = 24000,
        range = "N/A",
        stability = "Stable",
        demand = 6,
        rarity = 6,
        origin = "Halloween 2025 (Unboxed)"
    },

    {
        name = "Chroma Raygun",
        category = "Chroma",
        value = 14000,
        range = "N/A",
        stability = "Stable",
        demand = 6,
        rarity = 5,
        origin = "Halloween 2025 (Tier 25)"
    },

    {
        name = "Chroma Sunrise",
        category = "Chroma",
        value = 12500,
        range = "N/A",
        stability = "Stable",
        demand = 5,
        rarity = 5,
        origin = "Summer 2025 (Unboxed)"
    },

    {
        name = "Chroma Sunset",
        category = "Chroma",
        value = 8250,
        range = "8,000 - 8,250",
        stability = "Underpaid For",
        demand = 5,
        rarity = 5,
        origin = "Summer 2025 (Tier 25)"
    },

    {
        name = "Chroma Blizzard",
        category = "Chroma",
        value = 4750,
        range = "4,500 - 4,750",
        stability = "Stable",
        demand = 5,
        rarity = 5,
        origin = "Christmas"
    },

    {
        name = "Chroma Treat",
        category = "Chroma",
        value = 2000,
        range = "1,950 - 2,000",
        stability = "Receding",
        demand = 5,
        rarity = 4,
        origin = "Valentine's 2026 (Item Pack)"
    },

    {
        name = "Chroma Sweet",
        category = "Chroma",
        value = 1850,
        range = "N/A",
        stability = "Stable",
        demand = 5,
        rarity = 4,
        origin = "Valentine's 2026 (Item Pack)"
    },

    {
        name = "Chroma Ornament",
        category = "Chroma",
        value = 1800,
        range = "N/A",
        stability = "Stable",
        demand = 5,
        rarity = 4,
        origin = "Christmas 2025 (Gifting)"
    },

    {
        name = "Chroma Icecream",
        category = "Chroma",
        value = 1600,
        range = "1,600 - 1,800",
        stability = "Overpaid For",
        demand = 6,
        rarity = 4,
        origin = "Summer 2026 (Unboxed)"
    },

    {
        name = "Chroma Sands",
        category = "Chroma",
        value = 1400,
        range = "1,350 - 1,450",
        stability = "Fluctuating",
        demand = 5,
        rarity = 4,
        origin = "Summer 2026 (Item Pack)"
    },

    {
        name = "Chroma Beachy",
        category = "Chroma",
        value = 1350,
        range = "1,300 - 1,400",
        stability = "Fluctuating",
        demand = 5,
        rarity = 4,
        origin = "Summer 2026 (Item Pack)"
    },

    {
        name = "Chroma Fire Fox",
        category = "Chroma",
        value = 3,
        range = "2 - 3",
        stability = "Underpaid For",
        demand = 1,
        rarity = 2,
        origin = "Season 1 Pet Egg"
    },

    {
        name = "Chroma Fire Pig",
        category = "Chroma",
        value = 3,
        range = "2 - 3",
        stability = "Underpaid For",
        demand = 1,
        rarity = 2,
        origin = "Season 1 Pet Egg"
    },

    --==========================================================--
    -- ANCIENTS
    --==========================================================--

    {
        name = "Harvester",
        category = "Ancient",
        value = 250,
        range = "N/A",
        stability = "Stable",
        demand = 3,
        rarity = 2,
        origin = "Halloween 2021 (Tier 30)"
    },

    {
        name = "Icepiercer",
        category = "Ancient",
        value = 160,
        range = "N/A",
        stability = "Stable",
        demand = 3,
        rarity = 2,
        origin = "Christmas 2022 (Tier 20)"
    },

    {
        name = "Icebreaker",
        category = "Ancient",
        value = 65,
        range = "N/A",
        stability = "Stable",
        demand = 1,
        rarity = 2,
        origin = "Christmas 2020 (Tier 20)"
    },

    {
        name = "Batwing",
        category = "Ancient",
        value = 42,
        range = "N/A",
        stability = "Stable",
        demand = 1,
        rarity = 2,
        origin = "Halloween 2020"
    },

    --==========================================================--
    -- LEGENDARIES
    --==========================================================--

    {
        name = "Latte (Gun)",
        category = "Legendary",
        value = 140,
        range = "N/A",
        stability = "Stable",
        demand = 3,
        rarity = 3,
        origin = "Summer 2024 (Item Pack)"
    },

    {
        name = "Beach",
        category = "Legendary",
        value = 35,
        range = "N/A",
        stability = "Stable",
        demand = 3,
        rarity = 3,
        origin = "Summer"
    },

    {
        name = "Vampire (Knife)",
        category = "Legendary",
        value = 3,
        range = "N/A",
        stability = "Stable",
        demand = 2,
        rarity = 3,
        origin = "Halloween"
    },

    --==========================================================--
    -- VINTAGES
    --==========================================================--

    {
        name = "America",
        category = "Vintage",
        value = 1,
        range = "N/A",
        stability = "Stable",
        demand = 1,
        rarity = 5,
        origin = "Classic"
    },

    --==========================================================--
    -- SETS
    --==========================================================--

    {
        name = "Xeno Set",
        category = "Sets",
        value = 750,
        range = "750 - 800",
        stability = "Overpaid For",
        demand = 5,
        rarity = 5,
        origin = "Summer 2026"
    },

    --==========================================================--
    -- RARES
    --==========================================================--

    {
        name = "Rare Example",
        category = "Rare",
        value = 1,
        range = "N/A",
        stability = "Stable",
        demand = 1,
        rarity = 1,
        origin = "MM2"
    },

    --==========================================================--
    -- UNCOMMONS
    --==========================================================--

    {
        name = "Uncommon Example",
        category = "Uncommon",
        value = 1,
        range = "N/A",
        stability = "Stable",
        demand = 1,
        rarity = 1,
        origin = "MM2"
    },

    --==========================================================--
    -- COMMONS
    --==========================================================--

    {
        name = "Common Example",
        category = "Common",
        value = 1,
        range = "N/A",
        stability = "Stable",
        demand = 1,
        rarity = 1,
        origin = "MM2"
    },

    --==========================================================--
    -- PETS
    --==========================================================--

    {
        name = "Pet Example",
        category = "Pets",
        value = 1,
        range = "N/A",
        stability = "Stable",
        demand = 1,
        rarity = 1,
        origin = "MM2"
    },

    --==========================================================--
    -- EVOS
    --==========================================================--

    {
        name = "Evo Example",
        category = "Evo",
        value = 1,
        range = "N/A",
        stability = "Stable",
        demand = 1,
        rarity = 1,
        origin = "MM2"
    }
}

--==============================================================--
-- GUI
--==============================================================--

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "MM2SupremeValues"
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- Very high DisplayOrder so normal game ScreenGuis render below it.
ScreenGui.DisplayOrder = SETTINGS.DisplayOrder

ScreenGui.Parent = PlayerGui

--==============================================================--
-- MAIN WINDOW
--==============================================================--

local Main = Instance.new("Frame")
Main.Name = "Main"
Main.Size = UDim2.new(0, SETTINGS.MainWidth, 0, SETTINGS.MainHeight)
Main.Position = UDim2.new(0.5, -SETTINGS.MainWidth / 2, 0.5, -SETTINGS.MainHeight / 2)
Main.BackgroundColor3 = COLORS.Background
Main.BorderSizePixel = 0
Main.Parent = ScreenGui

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 15)
MainCorner.Parent = Main

local MainStroke = Instance.new("UIStroke")
MainStroke.Color = COLORS.Blue
MainStroke.Thickness = 2
MainStroke.Transparency = 0.2
MainStroke.Parent = Main

--==============================================================--
-- TOP BAR
--==============================================================--

local TopBar = Instance.new("Frame")
TopBar.Size = UDim2.new(1, 0, 0, 66)
TopBar.BackgroundColor3 = COLORS.Panel
TopBar.BorderSizePixel = 0
TopBar.Parent = Main

local TopCorner = Instance.new("UICorner")
TopCorner.CornerRadius = UDim.new(0, 15)
TopCorner.Parent = TopBar

local Title = Instance.new("TextLabel")
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0, 20, 0, 8)
Title.Size = UDim2.new(1, -130, 0, 28)
Title.Text = SETTINGS.Title
Title.TextColor3 = COLORS.White
Title.Font = Enum.Font.GothamBold
Title.TextSize = 20
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.Parent = TopBar

local Subtitle = Instance.new("TextLabel")
Subtitle.BackgroundTransparency = 1
Subtitle.Position = UDim2.new(0, 20, 0, 37)
Subtitle.Size = UDim2.new(1, -130, 0, 18)
Subtitle.Text = SETTINGS.Subtitle
Subtitle.TextColor3 = COLORS.Gray
Subtitle.Font = Enum.Font.Gotham
Subtitle.TextSize = 11
Subtitle.TextXAlignment = Enum.TextXAlignment.Left
Subtitle.Parent = TopBar

--==============================================================--
-- MINIMIZE BUTTON
--==============================================================--

local Minimize = Instance.new("TextButton")
Minimize.Name = "Minimize"
Minimize.Size = UDim2.new(0, 38, 0, 38)
Minimize.Position = UDim2.new(1, -94, 0, 14)
Minimize.BackgroundColor3 = COLORS.BlueDark
Minimize.BorderSizePixel = 0
Minimize.Text = "—"
Minimize.TextColor3 = COLORS.White
Minimize.Font = Enum.Font.GothamBold
Minimize.TextSize = 18
Minimize.Parent = TopBar

local MinCorner = Instance.new("UICorner")
MinCorner.CornerRadius = UDim.new(0, 9)
MinCorner.Parent = Minimize

--==============================================================--
-- CLOSE BUTTON
--==============================================================--

local Close = Instance.new("TextButton")
Close.Name = "Close"
Close.Size = UDim2.new(0, 38, 0, 38)
Close.Position = UDim2.new(1, -48, 0, 14)
Close.BackgroundColor3 = COLORS.Red
Close.BorderSizePixel = 0
Close.Text = "×"
Close.TextColor3 = COLORS.White
Close.Font = Enum.Font.GothamBold
Close.TextSize = 24
Close.Parent = TopBar

local CloseCorner = Instance.new("UICorner")
CloseCorner.CornerRadius = UDim.new(0, 9)
CloseCorner.Parent = Close

--==============================================================--
-- SEARCH
--==============================================================--

local SearchBox = Instance.new("TextBox")
SearchBox.Name = "Search"
SearchBox.Size = UDim2.new(1, -160, 0, 42)
SearchBox.Position = UDim2.new(0, 20, 0, 80)
SearchBox.BackgroundColor3 = COLORS.Card
SearchBox.BorderSizePixel = 0
SearchBox.PlaceholderText = "Search item..."
SearchBox.PlaceholderColor3 = COLORS.Gray
SearchBox.TextColor3 = COLORS.White
SearchBox.Text = ""
SearchBox.ClearTextOnFocus = false
SearchBox.Font = Enum.Font.Gotham
SearchBox.TextSize = 14
SearchBox.Parent = Main

local SearchCorner = Instance.new("UICorner")
SearchCorner.CornerRadius = UDim.new(0, 10)
SearchCorner.Parent = SearchBox

local SearchStroke = Instance.new("UIStroke")
SearchStroke.Color = COLORS.Blue
SearchStroke.Transparency = 0.5
SearchStroke.Parent = SearchBox

local SearchButton = Instance.new("TextButton")
SearchButton.Size = UDim2.new(0, 115, 0, 42)
SearchButton.Position = UDim2.new(1, -135, 0, 80)
SearchButton.BackgroundColor3 = COLORS.Blue
SearchButton.BorderSizePixel = 0
SearchButton.Text = "SEARCH"
SearchButton.TextColor3 = COLORS.White
SearchButton.Font = Enum.Font.GothamBold
SearchButton.TextSize = 12
SearchButton.Parent = Main

local SearchCorner2 = Instance.new("UICorner")
SearchCorner2.CornerRadius = UDim.new(0, 10)
SearchCorner2.Parent = SearchButton

--==============================================================--
-- CATEGORY BAR
--==============================================================--

local CategoryFrame = Instance.new("ScrollingFrame")
CategoryFrame.Name = "Categories"
CategoryFrame.Size = UDim2.new(1, -40, 0, 40)
CategoryFrame.Position = UDim2.new(0, 20, 0, 132)
CategoryFrame.BackgroundTransparency = 1
CategoryFrame.BorderSizePixel = 0
CategoryFrame.ScrollBarThickness = 2
CategoryFrame.ScrollingDirection = Enum.ScrollingDirection.X
CategoryFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
CategoryFrame.Parent = Main

local CategoryLayout = Instance.new("UIListLayout")
CategoryLayout.FillDirection = Enum.FillDirection.Horizontal
CategoryLayout.Padding = UDim.new(0, 6)
CategoryLayout.Parent = CategoryFrame

local Categories = {
    "All",
    "Evo",
    "Godly",
    "Chroma",
    "Ancient",
    "Legendary",
    "Vintage",
    "Sets",
    "Rare",
    "Uncommon",
    "Common",
    "Pets"
}

local CategoryButtons = {}
local CurrentCategory = "All"

--==============================================================--
-- ITEM LIST
--==============================================================--

local List = Instance.new("ScrollingFrame")
List.Name = "ItemList"
List.Size = UDim2.new(1, -40, 1, -230)
List.Position = UDim2.new(0, 20, 0, 180)
List.BackgroundTransparency = 1
List.BorderSizePixel = 0
List.ScrollBarThickness = 5
List.ScrollBarImageColor3 = COLORS.Blue
List.CanvasSize = UDim2.new(0, 0, 0, 0)
List.Parent = Main

local ListLayout = Instance.new("UIListLayout")
ListLayout.Padding = UDim.new(0, 8)
ListLayout.SortOrder = Enum.SortOrder.LayoutOrder
ListLayout.Parent = List

local Padding = Instance.new("UIPadding")
Padding.PaddingBottom = UDim.new(0, 15)
Padding.Parent = List

--==============================================================--
-- STATUS
--==============================================================--

local Status = Instance.new("TextLabel")
Status.Size = UDim2.new(1, -165, 0, 25)
Status.Position = UDim2.new(0, 20, 1, -49)
Status.BackgroundTransparency = 1
Status.TextColor3 = COLORS.Gray
Status.Font = Enum.Font.Gotham
Status.TextSize = 11
Status.TextXAlignment = Enum.TextXAlignment.Left
Status.Text = "Loading..."
Status.Parent = Main

local Refresh = Instance.new("TextButton")
Refresh.Size = UDim2.new(0, 115, 0, 32)
Refresh.Position = UDim2.new(1, -135, 1, -50)
Refresh.BackgroundColor3 = COLORS.BlueDark
Refresh.BorderSizePixel = 0
Refresh.Text = "↻ REFRESH"
Refresh.TextColor3 = COLORS.White
Refresh.Font = Enum.Font.GothamBold
Refresh.TextSize = 11
Refresh.Parent = Main

local RefreshCorner = Instance.new("UICorner")
RefreshCorner.CornerRadius = UDim.new(0, 8)
RefreshCorner.Parent = Refresh

--==============================================================--
-- UTILITY
--==============================================================--

local function FormatNumber(value)

    if value == nil then
        return "0"
    end

    if type(value) == "string" then
        return value
    end

    local text = tostring(math.floor(value))

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

local function CategoryColor(category)

    if category == "Godly" then
        return COLORS.Pink
    elseif category == "Chroma" then
        return COLORS.Purple
    elseif category == "Ancient" then
        return COLORS.Orange
    elseif category == "Legendary" then
        return COLORS.Red
    elseif category == "Vintage" then
        return COLORS.Yellow
    elseif category == "Evo" then
        return COLORS.BlueLight
    elseif category == "Sets" then
        return Color3.fromRGB(90, 190, 255)
    else
        return COLORS.BlueLight
    end
end

local function ClearList()

    for _, object in ipairs(List:GetChildren()) do

        if object:IsA("Frame") then
            object:Destroy()
        end

    end
end

--==============================================================--
-- ITEM CARD
--==============================================================--

local function CreateCard(item, index)

    local Card = Instance.new("Frame")
    Card.Name = item.name
    Card.Size = UDim2.new(1, -5, 0, 96)
    Card.BackgroundColor3 = COLORS.Card
    Card.BorderSizePixel = 0
    Card.LayoutOrder = index
    Card.Parent = List

    local Corner = Instance.new("UICorner")
    Corner.CornerRadius = UDim.new(0, 10)
    Corner.Parent = Card

    local Stroke = Instance.new("UIStroke")
    Stroke.Color = CategoryColor(item.category)
    Stroke.Transparency = 0.72
    Stroke.Parent = Card

    -- Item name
    local Name = Instance.new("TextLabel")
    Name.BackgroundTransparency = 1
    Name.Position = UDim2.new(0, 14, 0, 8)
    Name.Size = UDim2.new(0.55, 0, 0, 25)
    Name.Text = item.name
    Name.TextColor3 = COLORS.White
    Name.Font = Enum.Font.GothamBold
    Name.TextSize = 15
    Name.TextXAlignment = Enum.TextXAlignment.Left
    Name.TextTruncate = Enum.TextTruncate.AtEnd
    Name.Parent = Card

    -- Category
    local Category = Instance.new("TextLabel")
    Category.BackgroundTransparency = 1
    Category.Position = UDim2.new(0, 14, 0, 38)
    Category.Size = UDim2.new(0.4, 0, 0, 18)
    Category.Text = item.category
    Category.TextColor3 = CategoryColor(item.category)
    Category.Font = Enum.Font.GothamBold
    Category.TextSize = 11
    Category.TextXAlignment = Enum.TextXAlignment.Left
    Category.Parent = Card

    -- Value
    local Value = Instance.new("TextLabel")
    Value.BackgroundTransparency = 1
    Value.Position = UDim2.new(0.55, 0, 0, 7)
    Value.Size = UDim2.new(0.43, -15, 0, 28)
    Value.Text = "VALUE  " .. FormatNumber(item.value)
    Value.TextColor3 = COLORS.Green
    Value.Font = Enum.Font.GothamBold
    Value.TextSize = 17
    Value.TextXAlignment = Enum.TextXAlignment.Right
    Value.Parent = Card

    -- Demand / Rarity
    local Stats = Instance.new("TextLabel")
    Stats.BackgroundTransparency = 1
    Stats.Position = UDim2.new(0.43, 0, 0, 38)
    Stats.Size = UDim2.new(0.55, -15, 0, 18)

    Stats.Text =
        "Demand: " .. tostring(item.demand)
        .. "   •   Rarity: " .. tostring(item.rarity)

    Stats.TextColor3 = COLORS.Gray
    Stats.Font = Enum.Font.Gotham
    Stats.TextSize = 10
    Stats.TextXAlignment = Enum.TextXAlignment.Right
    Stats.Parent = Card

    -- Range / Stability
    local Extra = Instance.new("TextLabel")
    Extra.BackgroundTransparency = 1
    Extra.Position = UDim2.new(0, 14, 0, 66)
    Extra.Size = UDim2.new(1, -28, 0, 18)

    Extra.Text =
        "Range: " .. tostring(item.range)
        .. "   •   Stability: " .. tostring(item.stability)

    Extra.TextColor3 = COLORS.Gray
    Extra.Font = Enum.Font.Gotham
    Extra.TextSize = 10
    Extra.TextXAlignment = Enum.TextXAlignment.Left
    Extra.TextTruncate = Enum.TextTruncate.AtEnd
    Extra.Parent = Card

end

--==============================================================--
-- SORT
--==============================================================--

local function GetSortedItems()

    local sorted = {}

    for _, item in ipairs(ITEMS) do
        table.insert(sorted, item)
    end

    table.sort(sorted, function(a, b)

        local av = tonumber(a.value) or 0
        local bv = tonumber(b.value) or 0

        if av == bv then
            return a.name < b.name
        end

        return av > bv
    end)

    return sorted
end

--==============================================================--
-- REFRESH LIST
--==============================================================--

local function RefreshList()

    ClearList()

    local query = string.lower(SearchBox.Text or "")
    local count = 0

    for _, item in ipairs(GetSortedItems()) do

        local name = string.lower(tostring(item.name or ""))
        local category = string.lower(tostring(item.category or ""))
        local origin = string.lower(tostring(item.origin or ""))

        local searchMatch =
            query == ""
            or string.find(name, query, 1, true)
            or string.find(category, query, 1, true)
            or string.find(origin, query, 1, true)

        local categoryMatch =
            CurrentCategory == "All"
            or item.category == CurrentCategory

        if searchMatch and categoryMatch then

            count += 1

            CreateCard(item, count)

        end

    end

    task.wait()

    List.CanvasSize = UDim2.new(
        0,
        0,
        0,
        ListLayout.AbsoluteContentSize.Y + 20
    )

    Status.Text =
        tostring(count)
        .. " items • "
        .. CurrentCategory
        .. " • Supreme Values"

end

--==============================================================--
-- CATEGORY BUTTONS
--==============================================================--

for _, categoryName in ipairs(Categories) do

    local Button = Instance.new("TextButton")

    Button.Size = UDim2.new(0, 82, 0, 34)
    Button.BackgroundColor3 =
        categoryName == "All"
        and COLORS.Blue
        or COLORS.Card

    Button.BorderSizePixel = 0
    Button.Text = categoryName
    Button.TextColor3 = COLORS.White
    Button.Font = Enum.Font.GothamBold
    Button.TextSize = 10
    Button.Parent = CategoryFrame

    local Corner = Instance.new("UICorner")
    Corner.CornerRadius = UDim.new(0, 8)
    Corner.Parent = Button

    CategoryButtons[categoryName] = Button

    Button.MouseButton1Click:Connect(function()

        CurrentCategory = categoryName

        for name, otherButton in pairs(CategoryButtons) do

            if name == CurrentCategory then
                otherButton.BackgroundColor3 = COLORS.Blue
            else
                otherButton.BackgroundColor3 = COLORS.Card
            end

        end

        RefreshList()

    end)

end

CategoryLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()

    CategoryFrame.CanvasSize = UDim2.new(
        0,
        CategoryLayout.AbsoluteContentSize.X + 15,
        0,
        0
    )

end)

--==============================================================--
-- SEARCH EVENTS
--==============================================================--

SearchBox:GetPropertyChangedSignal("Text"):Connect(function()
    RefreshList()
end)

SearchButton.MouseButton1Click:Connect(function()
    RefreshList()
end)

--==============================================================--
-- CLOSE CONFIRMATION
--==============================================================--

local ConfirmOverlay = Instance.new("Frame")
ConfirmOverlay.Name = "CloseConfirmation"
ConfirmOverlay.Size = UDim2.new(1, 0, 1, 0)
ConfirmOverlay.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ConfirmOverlay.BackgroundTransparency = 0.35
ConfirmOverlay.Visible = false
ConfirmOverlay.ZIndex = 100
ConfirmOverlay.Parent = Main

local ConfirmBox = Instance.new("Frame")
ConfirmBox.Size = UDim2.new(0, 390, 0, 190)
ConfirmBox.Position = UDim2.new(0.5, -195, 0.5, -95)
ConfirmBox.BackgroundColor3 = COLORS.Panel
ConfirmBox.BorderSizePixel = 0
ConfirmBox.ZIndex = 101
ConfirmBox.Parent = ConfirmOverlay

local ConfirmCorner = Instance.new("UICorner")
ConfirmCorner.CornerRadius = UDim.new(0, 13)
ConfirmCorner.Parent = ConfirmBox

local ConfirmStroke = Instance.new("UIStroke")
ConfirmStroke.Color = COLORS.Blue
ConfirmStroke.Thickness = 2
ConfirmStroke.Parent = ConfirmBox

local ConfirmTitle = Instance.new("TextLabel")
ConfirmTitle.BackgroundTransparency = 1
ConfirmTitle.Position = UDim2.new(0, 20, 0, 18)
ConfirmTitle.Size = UDim2.new(1, -40, 0, 28)
ConfirmTitle.Text = "Close Menu?"
ConfirmTitle.TextColor3 = COLORS.White
ConfirmTitle.Font = Enum.Font.GothamBold
ConfirmTitle.TextSize = 20
ConfirmTitle.ZIndex = 102
ConfirmTitle.Parent = ConfirmBox

local ConfirmText = Instance.new("TextLabel")
ConfirmText.BackgroundTransparency = 1
ConfirmText.Position = UDim2.new(0, 20, 0, 55)
ConfirmText.Size = UDim2.new(1, -40, 0, 45)
ConfirmText.Text = "Are you sure you want to close the menu?"
ConfirmText.TextColor3 = COLORS.Gray
ConfirmText.Font = Enum.Font.Gotham
ConfirmText.TextSize = 13
ConfirmText.TextWrapped = true
ConfirmText.ZIndex = 102
ConfirmText.Parent = ConfirmBox

local Yes = Instance.new("TextButton")
Yes.Size = UDim2.new(0, 150, 0, 40)
Yes.Position = UDim2.new(0, 30, 1, -55)
Yes.BackgroundColor3 = COLORS.Red
Yes.BorderSizePixel = 0
Yes.Text = "YES"
Yes.TextColor3 = COLORS.White
Yes.Font = Enum.Font.GothamBold
Yes.TextSize = 12
Yes.ZIndex = 102
Yes.Parent = ConfirmBox

local YesCorner = Instance.new("UICorner")
YesCorner.CornerRadius = UDim.new(0, 9)
YesCorner.Parent = Yes

local No = Instance.new("TextButton")
No.Size = UDim2.new(0, 150, 0, 40)
No.Position = UDim2.new(1, -180, 1, -55)
No.BackgroundColor3 = COLORS.Blue
No.BorderSizePixel = 0
No.Text = "NO"
No.TextColor3 = COLORS.White
No.Font = Enum.Font.GothamBold
No.TextSize = 12
No.ZIndex = 102
No.Parent = ConfirmBox

local NoCorner = Instance.new("UICorner")
NoCorner.CornerRadius = UDim.new(0, 9)
NoCorner.Parent = No

Close.MouseButton1Click:Connect(function()
    ConfirmOverlay.Visible = true
end)

No.MouseButton1Click:Connect(function()
    ConfirmOverlay.Visible = false
end)

Yes.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

--==============================================================--
-- MINIMIZE
--==============================================================--

local minimized = false

local FullSize = Main.Size
local FullPosition = Main.Position

Minimize.MouseButton1Click:Connect(function()

    minimized = not minimized

    if minimized then

        FullSize = Main.Size
        FullPosition = Main.Position

        Main.Size = UDim2.new(0, 300, 0, 66)

        Main.Position = UDim2.new(
            Main.Position.X.Scale,
            Main.Position.X.Offset,
            Main.Position.Y.Scale,
            Main.Position.Y.Offset
        )

        SearchBox.Visible = false
        SearchButton.Visible = false
        CategoryFrame.Visible = false
        List.Visible = false
        Status.Visible = false
        Refresh.Visible = false

        Minimize.Text = "□"

    else

        Main.Size = FullSize
        Main.Position = FullPosition

        SearchBox.Visible = true
        SearchButton.Visible = true
        CategoryFrame.Visible = true
        List.Visible = true
        Status.Visible = true
        Refresh.Visible = true

        Minimize.Text = "—"

    end

end)

--==============================================================--
-- DRAG
--==============================================================--

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

    if not dragging then
        return
    end

    if input.UserInputType == Enum.UserInputType.MouseMovement
        or input.UserInputType == Enum.UserInputType.Touch then

        local delta = input.Position - dragStart

        Main.Position = UDim2.new(
            startPosition.X.Scale,
            startPosition.X.Offset + delta.X,
            startPosition.Y.Scale,
            startPosition.Y.Offset + delta.Y
        )

    end

end)

--==============================================================--
-- MOBILE
--==============================================================--

if UserInputService.TouchEnabled then

    Main.Size = UDim2.new(
        SETTINGS.MobileWidth,
        0,
        SETTINGS.MobileHeight,
        0
    )

    Main.Position = UDim2.new(
        (1 - SETTINGS.MobileWidth) / 2,
        0,
        (1 - SETTINGS.MobileHeight) / 2,
        0
    )

end

--==============================================================--
-- START
--==============================================================--

RefreshList()

print("==========================================")
print(" MM2 Supreme Values UI")
print(" Loaded successfully")
print(" Items:", #ITEMS)
print(" DisplayOrder:", SETTINGS.DisplayOrder)
print("==========================================")
