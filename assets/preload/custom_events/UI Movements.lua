function onEvent(name, value1, value2)
if value1 == '1' then
    doTweenAngle('uitween', 'camHUD', 360, 0.2, 'cubeOut')
end
if value1 == '2' then
    doTweenAngle('uitween', 'camHUD', 180, 0.1, 'cubeOut')
end

if value2 == '1' then
    doTweenAngle('uitween', 'camHUD', -30, 0.2, 'cubeOut')
end

if value2 == '2' then
    doTweenAngle('uitween', 'camHUD', 30, 0.2, 'cubeOut')
end

if value2 == '3' then
    doTweenAngle('uitween', 'camHUD', 0, 0.2, 'cubeOut')
end
end
