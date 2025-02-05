local TweenService = game:GetService("TweenService")

local TweenUtil = {}

function TweenUtil:Tween(instance, properties, duration)
    local tweenInfo = TweenInfo.new(duration, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    local tween = TweenService:Create(instance, tweenInfo, properties)
    tween:Play()
    return tween
end

return TweenUtil
