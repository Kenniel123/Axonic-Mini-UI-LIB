local UiLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kenniel123/Axonic-Mini-UI-LIB/refs/heads/main/AxonicMiniUILIB"))()

local lib = UiLibrary.new("Axonic", {
    Theme = "Dark",
    KeySystem = true,
    HardCodedKey = "Axonic_Is_The_Best",
    GetKeyLink = "https://discord.gg/6bCRCGTNGT",
    DiscordLink = "https://discord.gg/6bCRCGTNGT",
    LifetimeKeyLink = "https://discord.gg/6bCRCGTNGT"
})

lib:CreateDivider({
    Text = "ELEMENTS"
})

local Toggle = lib:CreateToggle({
    Name = "Toggle",
    Default = false,
    Callback = function(enabled)
        print("Toggle:", enabled)
    end
})

local Input

Input = lib:CreateInput({
    Name = "Input",
    Placeholder = "Enter text...",
    Default = "",
    Callback = function(text)
        print("Input:", text)
    end
})

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

local Button = lib:CreateButton({
    Name = "Button",
    Callback = function()
        print("Button clicked")
    end
})

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

local Slider = lib:CreateSlider({
    Name = "Slider",
    Min = 0,
    Max = 100,
    Default = 50,
    Callback = function(value)
        print("Slider:", value)
    end
})

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

lib:CreateDivider({
    Text = "UI"
})

local ToggleUI = lib:CreateKeybind({
    Name = "Toggle UI",
    Default = Enum.KeyCode.RightShift,
    Callback = function()
        lib:ToggleMinimize()
    end
})

lib:CreateFooter("Axonic - Mini")
