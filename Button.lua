
local Button = {}

function Button.new(parent, text, callback)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0, 200, 0, 50)
    button.Position = UDim2.new(0.5, -100, 0.5, -25)
    button.Text = text
    button.Font = Enum.Font.SourceSans
    button.TextSize = 24
    button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    button.TextColor3 = Color3.fromRGB(0, 0, 0)
    button.Parent = parent

    button.MouseButton1Click:Connect(function()
        if callback then
            callback()
        end
    end)

    return button
end

return Button
