local ScrapyUI = {}

-- Chargement des composants
local Button = require(script.Components.Button)
local Slider = require(script.Components.Slider)
local Toggle = require(script.Components.Toggle)

-- Méthode pour créer une interface
function ScrapyUI:CreateUI(title)
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = title
    screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    return screenGui
end

-- Ajouter un bouton
function ScrapyUI:CreateButton(parent, text, callback)
    return Button.new(parent, text, callback)
end

-- Ajouter un slider
function ScrapyUI:CreateSlider(parent, min, max, callback)
    return Slider.new(parent, min, max, callback)
end

-- Ajouter un toggle
function ScrapyUI:CreateToggle(parent, text, callback)
    return Toggle.new(parent, text, callback)
end

return ScrapyUI
