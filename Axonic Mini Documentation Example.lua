-- Load the Library
local UiLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kenniel123/Axonic-Mini-UI-LIB/refs/heads/main/AxonicMiniUILIB"))()

-- Create a Window
local lib = UiLibrary.new("Axonic", {
    Theme = "Dark",
    KeySystem = true,
    HardCodedKey = "Axonic_Is_The_Best",
    GetKeyLink = "https://discord.gg/6bCRCGTNGT",
    DiscordLink = "https://discord.gg/6bCRCGTNGT",
    LifetimeKeyLink = "https://discord.gg/6bCRCGTNGT"
})
-- Available Elements

lib:CreateDivider({
    Text = "ELEMENTS"
})

-- Toggle
local Toggle = lib:CreateToggle({
    Name = "Toggle",
    Default = false,
    Callback = function(enabled)
        print("Toggle:", enabled)
    end
})

-- Input
local Input
Input = lib:CreateInput({
    Name = "Input",
    Placeholder = "Enter text...",
    Default = "",
    Callback = function(text)
        print("Input:", text)
    end
})

-- Number Input Same as Input
local NumberInput
NumberInput = lib:CreateInput({
    Name = "Number Input",
    Placeholder = "Enter number...",
    Default = "1",
    NumbersOnly = true,
    Callback = function(value)
        print("Number:", value)
    end
})

-- Button
local Button = lib:CreateButton({
    Name = "Button",
    Callback = function()
        print("Button clicked")
    end
})

-- Dropdwon
local Dropdown = lib:CreateDropdown({
    Name = "Dropdown",
    Options = {
        "Option 1",
        "Option 2",
        "Option 3"
    },
    Default = "Option 1",
    Callback = function(selected)
        print("Dropdown:", selected)
    end
})

-- Slider
local Slider = lib:CreateSlider({
    Name = "Slider",
    Min = 0,
    Max = 100,
    Default = 50,
    Callback = function(value)
        print("Slider:", value)
    end
})

-- Keybind
local Keybind = lib:CreateKeybind({
    Name = "Keybind",
    Default = Enum.KeyCode.RightShift,

    Changed = function(newKey)
        print("Keybind changed:", newKey.Name)
    end,

    Callback = function()
        print("Keybind pressed")
    end
})

-- Divider
lib:CreateDivider({
    Text = "UI"
})

-- Keybind
local ToggleUI = lib:CreateKeybind({
    Name = "Toggle UI",
    Default = Enum.KeyCode.RightShift,
    Callback = function()
        lib:ToggleMinimize()
    end
})

lib:CreateFooter("Axonic - Mini")
