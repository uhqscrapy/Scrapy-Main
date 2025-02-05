
local Toggle = {}

function Toggle.new(parent, text, callback)
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 200, 0, 50)
    frame.Position = UDim2.new(0.5, -100, 0.5, 100)
    frame.BackgroundColor3 = Color3.fromRGB(240, 240, 240)
    frame.Parent = parent

    local label = Instance.new("TextLabel")
    label.Size = UDim2.new(0.7, 0, 1, 0)
    label.Position = UDim2.new(0, 0, 0, 0)
    label.Text = text
    label.Font = Enum.Font.SourceSans
    label.TextSize = 24
    label.BackgroundTransparency = 1
    label.TextColor3 = Color3.fromRGB(0, 0, 0)
    label.Parent = frame

    local toggleButton = Instance.new("TextButton")
    toggleButton.Size = UDim2.new(0.3, 0, 0.8, 0)
    toggleButton.Position = UDim2.new(0.7, 0, 0.1, 0)
    toggleButton.Text = "OFF"
    toggleButton.Font = Enum.Font.SourceSans
    toggleButton.TextSize = 18
    toggleButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
    toggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    toggleButton.Parent = frame

    local isOn = false
    toggleButton.MouseButton1Click:Connect(function()
        isOn = not isOn
        toggleButton.Text = isOn and "ON" or "OFF"
        toggleButton.BackgroundColor3 = isOn and Color3.fromRGB(50, 200, 50) or Color3.fromRGB(200, 50, 50)
        if callback then
            callback(isOn)
        end
    end)

    return frame
end

return Toggle
