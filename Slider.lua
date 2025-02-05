local Slider = {}

function Slider.new(parent, min, max, callback)
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 300, 0, 50)
    frame.Position = UDim2.new(0.5, -150, 0.5, 50)
    frame.BackgroundColor3 = Color3.fromRGB(240, 240, 240)
    frame.Parent = parent

    local sliderBar = Instance.new("Frame")
    sliderBar.Size = UDim2.new(0.8, 0, 0.3, 0)
    sliderBar.Position = UDim2.new(0.1, 0, 0.5, -10)
    sliderBar.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
    sliderBar.Parent = frame

    local knob = Instance.new("Frame")
    knob.Size = UDim2.new(0, 20, 0, 20)
    knob.Position = UDim2.new(0, -10, 0.5, -10)
    knob.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
    knob.Parent = sliderBar
    knob.Draggable = true

    knob:GetPropertyChangedSignal("Position"):Connect(function()
        local relativePos = math.clamp(knob.Position.X.Scale, 0, 1)
        local value = math.floor(min + (max - min) * relativePos)
        if callback then
            callback(value)
        end
    end)

    return frame
end

return Slider
