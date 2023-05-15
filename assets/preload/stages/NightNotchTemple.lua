local fart = false
local fartstrum = false
local flashbang = false 
local Quackerona = 0
local gapple = 0
local misses = 5
--pc stuff
local pc_w = 1280
local pc_h = 720
local pc_miltiplier_w = 60
local pc_miltiplier_h = 34

function onCreate()
    makeLuaSprite('bar1', 'bar1', 0, 0);
	makeGraphic('bar1',1700,500,'000000')
    addLuaSprite('bar1', true);
    makeLuaSprite('bar2', 'bar2', 0, 620);
    makeGraphic('bar2',1700,500,'000000')
	addLuaSprite('bar2', true);
	setObjectCamera('bar1', 'hud')
	setObjectCamera('bar2', 'hud')
	setObjectOrder('bar1', 1)
	setObjectOrder('bar2', 1)
    
    doTweenY('bar1up', 'bar1', -800, 0.5, 'quartOut')
    doTweenY('bar2up', 'bar2',  800, 0.5, 'quartOut')
--bars

	makeLuaSprite('bgflash', 'bgflash', -1850, -1400);
	makeGraphic('bgflash',7500,5000,'ffffff')

	makeLuaSprite('badapple', 'badapple', -1850, -1400);
	makeGraphic('badapple',7500,5000,'ffffff')
	setProperty('badapple.color', 0xFF000000)
	setObjectCamera('badapple', 'other')
	-- background shit
	makeLuaSprite('NightNotchSky', 'NightNotchSky', 0, 0);
	setScrollFactor('NightNotchSky', 0.7, 0.7);
	scaleObject('NightNotchSky', 1.6, 1.6);
	makeLuaSprite('NightNotchTem', 'NightNotchTem', 0, 0);
	setScrollFactor('NightNotchTem', 0.8, 0.8);
	scaleObject('NightNotchTem', 1.3, 1.3);
	makeLuaSprite('NightNotchGround', 'NightNotchGround', 100, 0);
	setScrollFactor('NightNotchGround', 1.0, 1.0);
	scaleObject('NightNotchGround', 1.4, 1.4);
	makeLuaSprite('NotchSky', 'NotchSky', 0, 0);
	setScrollFactor('NotchSky', 0.7, 0.7);
	scaleObject('NotchSky', 1.6, 1.6);
	makeLuaSprite('NotchTem', 'NotchTem', 0, 0);
	setScrollFactor('NotchTem', 0.8, 0.8);
	scaleObject('NotchTem', 1.3, 1.3);
	makeLuaSprite('NotchGround', 'NotchGround', 100, 0);
	setScrollFactor('NotchGround', 1.0, 1.0);
	scaleObject('NotchGround', 1.4, 1.4);
	makeLuaSprite('Effect', 'Effect', 100, 0);
	setScrollFactor('Effect', 1.0, 1.0);
	scaleObject('Effect', 1.8, 1.8);
	makeLuaSprite('ColorEffectNotch', 'ColorEffectNotch', 100, 0);
	setScrollFactor('ColorEffectNotch', 1.0, 1.0);
	scaleObject('ColorEffectNotch', 1.8, 1.8);
	addLuaSprite('NightNotchSky', false);
	addLuaSprite('NightNotchTem', false);
	addLuaSprite('NightNotchGround', false);
	addLuaSprite('NotchSky', false);
	addLuaSprite('NotchTem', false);
	addLuaSprite('NotchGround', false);
	addLuaSprite('badapple', false);
setProperty('skipCountdown',true)
setPropertyFromClass('flixel.FlxG', 'fullscreen', true)
end

function onCreatePost()
	setPropertyFromClass('flixel.FlxG', 'fullscreen', false)
	setProperty('gf.visible',false)
	if not middlescroll then 
		noteTweenX("note4", 4, defaultPlayerStrumX0 + 50 - 380, 1, 'quartOut')
		noteTweenX("note5", 5, defaultPlayerStrumX1 + 50 - 380, 1, 'quartOut')
		noteTweenX("note6", 6, defaultPlayerStrumX2 + 50 - 380, 1, 'quartOut')
		noteTweenX("note7", 7, defaultPlayerStrumX3 + 50 - 380, 1, 'quartOut')
		noteTweenX("note0", 0, defaultOpponentStrumX0 + 310, 1, 'quartOut')
		noteTweenX("note1", 1, defaultOpponentStrumX1 + 310, 1, 'quartOut')
		noteTweenX("note2", 2, defaultOpponentStrumX2 + 310, 1, 'quartOut')
		noteTweenX("note3", 3, defaultOpponentStrumX3 + 310, 1, 'quartOut')
		end
	doTweenAlpha('camHUDOff' ,'camHUD', 0, 0.5, 'linear')
	setProperty('dad.color', getColorFromHex('efffff'))
	setProperty('boyfriend.color', getColorFromHex('efffff'))
end

function onStepHit()
	if curStep == 1024 or curStep == 1808 then
		cameraFlash('camHUD', 'c61111', 1, true)
	end
if curStep == 255 or curStep == 767 or curStep == 1295 or curStep == 2063 then
fart = true
end
if curStep == 492 or curStep == 1004 or curStep == 1406 or curStep == 2190 then
	fart = false
	end
	if curStep == 1416 or curStep == 1418 or curStep == 1420 or curStep == 1422 then
        doTweenAlpha('camGameOff' ,'camGame', 0, 0.1, 'linear')
	end
	if curStep == 1417 or curStep == 1419 or curStep == 1421 or curStep == 1423 then
        doTweenAlpha('camGameOff' ,'camGame', 1, 0.1, 'linear')
	end
-- shirnk window ( i would automate this but its only for one part of the song so eh)
	if curStep == 1424 or curStep == 1428 or curStep == 1432 or curStep == 1435 or curStep == 1440 or curStep == 1444 or curStep == 1448 or curStep == 1451 or curStep == 1456 or curStep == 1460 or curStep == 1464 or curStep == 1467 or curStep == 1472 or curStep == 1476 or curStep == 1480 or curStep == 1483 or curStep == 1488 or curStep == 1492 or curStep == 1496 or curStep == 1499 or curStep == 1504 or curStep == 1508 or curStep == 1512 or curStep == 1516 or curStep == 1520 or curStep == 1524 or curStep == 1528 or curStep == 1532 then
		windowshrink()
		cameraFlash('camGame', 'ffffff', 0.5, true)
	end
	--back to normaliaty
	if curStep == 1438 or curStep == 1454 or curStep == 1470 or curStep == 1496 or curStep == 1502 or curStep == 1518 or curStep == 1534 then
		windowbop()
		windowbop()
		windowbop()
		windowbop()
	end
	if curStep == 512 or curStep == 1552 then
		fartstrum = true
		doTweenAngle('uitweenleft', 'camHUD', 0, 0.1, 'quadInOut')
	end
	if curStep == 772 or curStep == 1776 then
		fartstrum = false
		doTweenAngle('uitweenreset', 'camHUD', 0, 1, 'quadInOut')
	end
	if curStep == 512 or curStep == 1041 or curStep == 1104 or curStep == 1168 or curStep == 1232 or curStep == 1824 or curStep == 1214 or curStep == 1888 or curStep == 1952 or curStep == 2016 then
	flashbang = true
	end
	if curStep == 767 or curStep == 1087 or curStep == 1151 or curStep == 1214 or curStep == 1279 or curStep == 1807 or curStep == 1870 or curStep == 1934 or curStep == 1998 or curStep == 2063 then
	flashbang = false
	end															
	if curStep == 1024 or curStep == 1088 or curStep == 1152 or curStep == 1216 or curStep == 1808 or curStep == 1872 or curStep == 1936 or curStep == 2000 then
		setProperty("defaultCamZoom",0.8) 
		bar()
	end
	if curStep == 1032 or curStep == 1096 or curStep == 1160 or curStep == 1224 or curStep == 1816 or curStep == 1880 or curStep == 1944 or curStep == 2008 then
		setProperty("defaultCamZoom",1) 
		maxbar()
	end
	if curStep == 1040 or curStep == 1104 or curStep == 1168 or curStep == 1232 or curStep == 1824 or curStep == 1888 or curStep == 1952 or curStep == 2016 then
		setProperty("defaultCamZoom",0.6) 
		killbar()
	end
	--or stuff

if curStep == 1 then
	doTweenAlpha('badapplebye' ,'badapple', 0, 9, 'linear')
	doTweenZoom('camera', 'camGame', tonumber(0.8), tonumber(8.5), 'linear');
end

if curStep == 113 then
	characterPlayAnim('boyfriend', 'idle', true);
	characterPlayAnim('dad', 'idle', true);
end

if curStep == 118 then --118
	setProperty('defaultCamZoom',0.3)
	setProperty('camGame.zoom',0.3)
	setProperty('camFollowPos.x',1400)
    setProperty('camFollowPos.y',900)
    setProperty('camFollow.x',1400)
    setProperty('camFollow.y',900)
	removeLuaSprite('NotchSky', false);
	removeLuaSprite('NotchTem', false);
	removeLuaSprite('NotchGround', false);
	removeLuaSprite('NightNotchSky', false);
	removeLuaSprite('NightNotchTem', false);
	removeLuaSprite('NightNotchGround', false);
end

if curStep == 128 then
	setProperty('defaultCamZoom',0.6)
	setProperty('camGame.zoom',0.6)
	addLuaSprite('NightNotchSky', false);
	addLuaSprite('NightNotchTem', false);
	addLuaSprite('NightNotchGround', false);
setProperty('dad.color', getColorFromHex('9bdaf7'))
setProperty('boyfriend.color', getColorFromHex('70b7d8'))
flashbang = true
end

if curStep == 248 then
	flashbang = false
	doTweenAlpha('camHUDOff' ,'camHUD', 1, 0.5, 'linear')
	Quackerona = Quackerona + 0.03
	if not middlescroll then 
		noteTweenAlpha("NoteAlpha1", 0, 1, 0.3, linear)
		noteTweenAlpha("NoteAlpha2", 1, 1, 0.3, linear)
		noteTweenAlpha("NoteAlpha3", 2, 1, 0.3, linear)
		noteTweenAlpha("NoteAlpha4", 3, 1, 0.3, linear)
	noteTweenX("note4", 4, defaultPlayerStrumX0 - 0, 1, 'quartOut')
	noteTweenX("note5", 5, defaultPlayerStrumX1 - 0, 1, 'quartOut')
	noteTweenX("note6", 6, defaultPlayerStrumX2 - 0, 1, 'quartOut')
	noteTweenX("note7", 7, defaultPlayerStrumX3 - 0, 1, 'quartOut')

	noteTweenX("note0", 0, defaultOpponentStrumX0 + 0, 1, 'quartOut')
	noteTweenX("note1", 1, defaultOpponentStrumX1 + 0, 1, 'quartOut')
	noteTweenX("note2", 2, defaultOpponentStrumX2 + 0, 1, 'quartOut')
	noteTweenX("note3", 3, defaultOpponentStrumX3 + 0, 1, 'quartOut')
end
	end

	if curStep == 1292 then
		cameraFlash('camGame', 'f5e500', 0.5, true)
		setProperty('health', getProperty('health') + 2.0);
		gapple = gapple + 1
	end

	if curStep == 1293 or curStep == 2065 then
		setProperty('boyfriend.color', getColorFromHex('70b7d8'))
	end
	
	if curStep == 1416 then
		addHaxeLibrary('Application', 'lime.app')
		runHaxeCode("FlxTween.tween(Application.current.window, {x: 300}, 0.8);")
		runHaxeCode("FlxTween.tween(Application.current.window, {y: 200}, 0.8);")
		--default is 1280x720
		setPropertyFromClass('openfl.Lib', 'application.window.width', pc_w)
		setPropertyFromClass('openfl.Lib', 'application.window.height', pc_h)
end

	if curStep == 1424 then
		flashbang = true
end

if curStep == 1536 then
	setPropertyFromClass('flixel.FlxG', 'fullscreen', true)
	doTweenZoom('camera', 'camGame', tonumber(1), tonumber(1), 'linear');
end

if curStep == 2064 then
	gapple = gapple + 69
	cameraFlash('camGame', '000000', 0.5, true)
	setProperty('scoreTxt.color', 0xFFffff)
	setProperty('bgflash.color', 0xFFffff)
	setProperty('timeBar.color', 0xFFffff)
end

if curStep == 2192 then
	doTweenY('herofall', 'dad', getProperty('dad.y') + 300, 0.1, 'quadInOut');
	setProperty('dad.color', getColorFromHex('efffff'))
	setProperty('boyfriend.color', getColorFromHex('efffff'))
	removeLuaSprite('NightNotchSky', false);
	removeLuaSprite('NightNotchTem', false);
	removeLuaSprite('NightNotchGround', false);
	addLuaSprite('NotchSky', false);
	addLuaSprite('NotchTem', false);
	addLuaSprite('NotchGround', false);
end
end

function onBeatHit()
	if curBeat % 4 == 0 then--Beat hit!
		if fart == true then
		triggerEvent('Add Camera Zoom', '0', '')
        cameraFlash('camGame', '000000', 0.5, true)

		runTimer('arrowfart', 0.5 , 1);
		end
	end
	if curBeat % 1 == 0 then--Beat hit!
if flashbang == true then
	stupidbgflash()
end
end
end

function arrowfart()
	noteTweenX("nnote4", 4, defaultPlayerStrumX0 - 30, 0.5, 'quartOut')
	noteTweenX("nnote5", 5, defaultPlayerStrumX1 - 15, 0.5, 'quartOut')
	noteTweenX("nnote6", 6, defaultPlayerStrumX2 + 15, 0.5, 'quartOut')
	noteTweenX("nnote7", 7, defaultPlayerStrumX3 + 30, 0.5, 'quartOut')
end

function onTweenCompleted(tag)
    if tag == 'nnote7' then
        noteTweenX("nnote4", 4, defaultPlayerStrumX0 - 0, 0.2, 'quartOut')
        noteTweenX("nnote5", 5, defaultPlayerStrumX1 - 0, 0.2, 'quartOut')
        noteTweenX("nnote6", 6, defaultPlayerStrumX2 + 0, 0.2, 'quartOut')
        noteTweenX("nnote7", 7, defaultPlayerStrumX3 + 0, 0.2, 'quartOut')
    end
if fartstrum == true then
if tag == 'uitweenleft' then
    doTweenAngle('uitweenright', 'camHUD', 5, 3, 'quadInOut')
end
if tag == 'uitweenright' then
    doTweenAngle('uitweenleft', 'camHUD', -5, 3, 'quadInOut')
end
end
end

function stupidbgflash()
	triggerEvent('Add Camera Zoom', '0', Quackerona)
	addLuaSprite('bgflash', false);
	setProperty('bgflash.alpha',0.3)
	doTweenAlpha('flashy','bgflash',0,0.5,'linear')
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'arrowfart' then
		triggerEvent('Add Camera Zoom', '0', '0.1')
arrowfart()
	end
	if tag == 'changecolor' then
		setProperty('boyfriend.color', getColorFromHex('70b7d8'))
	end
end

function bar()
    doTweenY('bar1up', 'bar1', -450, 0.5, 'quartOut')
    doTweenY('bar2up', 'bar2',  670, 0.5, 'quartOut')
end

function maxbar()
    -- max is  400 and 610
    doTweenY('bar1up', 'bar1', -400, 0.5, 'quartOut')
    doTweenY('bar2up', 'bar2',  620, 0.5, 'quartOut')
end

function killbar()
    doTweenY('bar1up', 'bar1', -500, 0.5, 'quartOut')
    doTweenY('bar2up', 'bar2',  720, 0.5, 'quartOut')
end

function onUpdate()
if gapple == 1 then 
	setProperty('scoreTxt.color', 0xFFff00)
	setProperty('bgflash.color', 0xFFff00)
    setProperty('timeBar.color', 0xFFff00)
--check helath
if getProperty('health') < 2 then
	misses = misses - 1
	setProperty('health', getProperty('health') + 0.1);
end
if misses == 0 then
	gapple = gapple + 1 
end
end
if gapple == 2 then 
	cameraFlash('camGame', 'ff0033', 0.5, true)
	triggerEvent('Change Character','0','Notch')
	runTimer('changecolor', 0.1 , 1);
	setProperty('scoreTxt.color', 0xFFffff)
	setProperty('bgflash.color', 0xFFffff)
	setProperty('timeBar.color', 0xFFffff)
	gapple = gapple + 1
end
end

function windowshrink()
    pc_w = pc_w - pc_miltiplier_w
    pc_h = pc_h - pc_miltiplier_h
    setPropertyFromClass('openfl.Lib', 'application.window.width', pc_w)
    setPropertyFromClass('openfl.Lib', 'application.window.height', pc_h)
end

function windowbop()
    pc_w = pc_w + pc_miltiplier_w
    pc_h = pc_h + pc_miltiplier_h
    setPropertyFromClass('openfl.Lib', 'application.window.width', pc_w)
    setPropertyFromClass('openfl.Lib', 'application.window.height', pc_h)
end