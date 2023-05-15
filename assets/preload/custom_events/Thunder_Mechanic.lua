--shit to check if you hit the notes or nah
local counter = 0
--shit to check if its actually time to hit the note
local leftactive = false
local rightactive = false
local upactive = false
local downactive = false
--typa patterns 
local staircase = false
local jack = false
local ministair = false
local doubles = false
--making the images and text
function onCreate()

	makeAnimatedLuaSprite('lightning','thundernotes/lightning',1750, 50)
	addAnimationByPrefix('lightning','lightning','lightning',24,false)
	setScrollFactor('lightning', 0.8, 0.8);
	objectPlayAnimation('lightning','lightning',false)
	addLuaSprite('lightning', true);
	setProperty('lightning.visible', false);

	makeLuaSprite('fad', 'black', -600, -350)
    addLuaSprite('fad', true)
    doTweenAlpha('fadtween','fad',0, 0.1, linear)
	setObjectCamera('fad', 'hud')

	makeLuaSprite('left', 'thundernotes/left', 550, 1500)
	addLuaSprite('left', true)
	setObjectCamera('left', 'other')

	makeLuaSprite('left2', 'thundernotes/left', 550, 1500)
	addLuaSprite('left2', true)
	setObjectCamera('left2', 'other')
	--scaleObject('left', 1.3, 1.3)

	makeLuaSprite('right', 'thundernotes/right', 550, 1500)
	addLuaSprite('right', true)
	setObjectCamera('right', 'other')
	--scaleObject('right', 1.3, 1.3)

	makeLuaSprite('up', 'thundernotes/up', 550, 1500)
	addLuaSprite('up', true)
	setObjectCamera('up', 'other')
	--scaleObject('up', 1.3, 1.3)

	makeLuaSprite('up2', 'thundernotes/up', 550, 1500)
	addLuaSprite('up2', true)
	setObjectCamera('up2', 'other')

	makeLuaSprite('down', 'thundernotes/down', 550, 1500)
	addLuaSprite('down', true)
	setObjectCamera('down', 'other')
	--scaleObject('down', 1.3, 1.3)

	makeLuaSprite('down2', 'thundernotes/down', 550, 1500)
	addLuaSprite('down2', true)
	setObjectCamera('down2', 'other')

	makeLuaText('INSTRUCTION','HIT THE NOTES IN THE ORDER SHOWN', 1000, 130, 500)
    setObjectCamera('INSTRUCTION', 'other')
	setTextColor('INSTRUCTION', 'ff0000')
	setTextSize('INSTRUCTION',52)
	doTweenAlpha('texttween','INSTRUCTION',0, 0.1, linear)
	addLuaText('INSTRUCTION',true)
end

--code for the note mechanic
function onUpdate()
	if leftactive == true then
	if keyJustPressed('left') then
		playSound("hitsound", 0.7)
		counter = counter + 1;

		setProperty('left.visible', false);

		if staircase == true then
			leftactive = false
			downactive = true
		end

		if doubles == true then
			leftactive = false
			downactive = true
		end

		if jack == true then
			leftactive = false
			rightactive = true
		end

		if ministair == true then
			leftactive = false
			downactive = true

			if counter == 3 then 
				setProperty('left2.visible', false);
			end

		end

	  end
	end

	if rightactive == true then
		if keyJustPressed('right') then
			playSound("hitsound", 0.7)
			counter = counter + 1;
			setProperty('right.visible', false);

			if staircase == true then
				runTimer('Complete', 0.1 , 1);
				staircase = false
			end

			if doubles == true then
				rightactive = false
				leftactive = true
			end

			if jack == true then
				runTimer('Complete', 0.1 , 1);
				jack = false
			end

		  end
		end

		if upactive == true then
			if keyJustPressed('up') then
				playSound("hitsound", 0.7)
				counter = counter + 1;
				setProperty('up.visible', false);

				if staircase == true then
					upactive = false
					rightactive = true
				end

				if doubles == true then
					upactive = false
					rightactive = true
				end

				if jack == true then
					if counter == 2 then 
						setProperty('up2.visible', false);

						upactive = false
						leftactive = true
					end


				end

			  end
			end

			if downactive == true then
				if keyJustPressed('down') then
					playSound("hitsound", 0.7)
					counter = counter + 1;
					setProperty('down.visible', false);

					if staircase == true then
						downactive = false
						upactive = true
					end

					if doubles == true then
						runTimer('Complete', 0.1 , 1);
						doubles = false
					end

					if ministair == true then
						downactive = false
						leftactive = true

						if counter == 4 then 
							setProperty('down2.visible', false);
							runTimer('Complete', 0.1 , 1);
							ministair = false
						end

					end

				  end
				end
			end

function onEvent(name, value1, value2)
    if name == "Thunder_Mechanic" then
		runTimer('Activate', 0.1 , 1);

        if value1 == 'staircase' then
			setProperty('left.x', 250)
			setProperty('down.x', 450)
			setProperty('up.x', 650)
			setProperty('right.x', 850)
	
			doTweenY('notetween', 'left', 150, 0.3, 'linear')
			doTweenY('upnotetween', 'up', 150, 0.3, 'linear')
			doTweenY('downnotetween', 'down', 150, 0.3, 'linear')
			doTweenY('rightnotetween', 'right', 150, 0.3, 'linear')

			leftactive = true
			staircase = true
        end

        if value1 == 'jack' then
			setProperty('up.x', 250)
			setProperty('up2.x', 450)
			setProperty('left.x', 650)
			setProperty('right.x', 850)
	
			doTweenY('notetween', 'left', 150, 0.3, 'linear')
			doTweenY('upnotetween', 'up', 150, 0.3, 'linear')
			doTweenY('downnotetween', 'up2', 150, 0.3, 'linear')
			doTweenY('rightnotetween', 'right', 150, 0.3, 'linear')

			upactive = true
			jack = true
        end
		
        if value1 == 'ministair' then
			setProperty('left.x', 250)
			setProperty('down.x', 450)
			setProperty('left2.x', 650)
			setProperty('down2.x', 850)
	
			doTweenY('notetween', 'left', 150, 0.3, 'linear')
			doTweenY('upnotetween', 'down', 150, 0.3, 'linear')
			doTweenY('downnotetween', 'left2', 150, 0.3, 'linear')
			doTweenY('rightnotetween', 'down2', 150, 0.3, 'linear')

			leftactive = true
			ministair = true
        end

        if value1 == 'doubles' then
			setProperty('up.x', 250)
			setProperty('right.x', 450)
			setProperty('left.x', 650)
			setProperty('down.x', 850)
	
			doTweenY('notetween', 'left', 150, 0.3, 'linear')
			doTweenY('upnotetween', 'up', 150, 0.3, 'linear')
			doTweenY('downnotetween', 'down', 150, 0.3, 'linear')
			doTweenY('rightnotetween', 'right', 150, 0.3, 'linear')

			upactive = true
			doubles = true
        end

	function onTimerCompleted(tag, loops, loopsLeft)
		if tag == 'DodgeTime' then
			if counter < 4 then 
				setProperty('lightning.visible', true);
				objectPlayAnimation('lightning','lightning',true)
				playSound("Thunder Sfx", 0.7)
				characterPlayAnim('boyfriend', 'singDOWNmiss', true);
				addLuaSprite('lightning', true);
				triggerEvent('Screen Shake','0.2,0.050','0.2,0.005')
				runTimer('Die', 0.2 , 1);
			end
		end

		if tag == 'Activate' then
			counter = 0
			doTweenAlpha('fadtween2', 'fad', 0.5, 0.5, linear)
			doTweenAlpha('texttween2','INSTRUCTION',1, 0.2, linear)

			setProperty('up.visible', true);
			setProperty('up2.visible', true);
			setProperty('left.visible', true);
			setProperty('left2.visible', true);
			setProperty('down.visible', true);
			setProperty('down2.visible', true);
			setProperty('right.visible', true);

			runTimer('DodgeTime', value2 , 1);
		end

		if tag == 'Die' then
			setProperty('health', getProperty('health')-2.5);
			leftactive = false
			rightactive = false
			upactive = false
			downactive = false
		end

		if tag == 'AnimationEnd' then
			setProperty('lightning.visible', false);
		end

		if tag == 'Complete' then
			leftactive = false
			rightactive = false
			upactive = false
			downactive = false

			setProperty('left.y', 1500)
			setProperty('left2.y', 1500)
			setProperty('down.y', 1500)
			setProperty('down2.y', 1500)
			setProperty('up.y', 1500)
			setProperty('up2.y', 1500)
			setProperty('right.y', 1500)

			   doTweenAlpha('fadtween2', 'fad', 0, 0.5, linear)
			   doTweenAlpha('texttween','INSTRUCTION',0, 0.1, linear)

			   playSound("Thunder Sfx", 1)
			   setProperty('lightning.visible', true);
			   objectPlayAnimation('lightning','lightning',true)
			   characterPlayAnim('boyfriend', 'dodge', true);
			   triggerEvent('Screen Shake','0.2,0.050','0.2,0.005')
			   runTimer('AnimationEnd', 1 , 1);
		end

		end--timer end

end
end