function onCreate()
	makeLuaSprite('fade', 'cinamatic bars', -600, -360)
	addLuaSprite('fade', true)
	doTweenAlpha('fadetween','fade',0, 0.1, linear)
	setObjectCamera('fade', 'hud')
	scaleObject('fade', 1.5, 0.3)

	-- background shit
	makeLuaSprite('NightSkySand', 'NightSkySand', -650, -500);
	setScrollFactor('NightSkySand', 0.8, 0.8);
	scaleObject('NightSkySand', 1.7, 1.7);


	makeLuaSprite('SandEntity', 'SandEntity', -600, -300);
	setScrollFactor('SandEntity', 1.0, 1.0);
	scaleObject('SandEntity', 1.7, 1.7);

	
	addLuaSprite('NightSkySand', false);
	addLuaSprite('SandEntity', false);
end
function onCreatePost()
	setProperty('dad.color', getColorFromHex('807e7d'))
	setProperty('boyfriend.color', getColorFromHex('807e7d'))
	setProperty('gf.color', getColorFromHex('807e7d'))
		setObjectOrder('fade', 1)
end
function onStepHit()
	if songName == 'Shadows' then
	if curStep == 1184 then
        setProperty('vocals.volume',0)
	end
end
--yes i will hard neglect ub im fuckin tired
if songName == 'Unknown Being' then
	if curStep == 256 then
		doTweenAlpha('fadetween2', 'fade', 1, 0.3, linear)
		doTweenZoom('camera', 'camGame', tonumber(1), tonumber(10.6), 'linear');
		maxbar()
	end
	if curStep == 348 then

	end
end
end