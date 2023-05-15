function onCreate()
	-- background shit
	makeLuaSprite('HerobrineSurface', 'HerobrineSurface', 0, 0);
	setScrollFactor('HerobrineSurface', 1, 1);
	scaleObject('HerobrineSurface', 2.0, 2.0);

	makeLuaSprite('HeroSky', 'HeroSky', -200, -300);
	setScrollFactor('HeroSky', 0.7, 0.7);
	scaleObject('HeroSky', 2.0, 2.0);

	makeLuaSprite('HeroMoon', 'HeroMoon', -250, -300);
	setScrollFactor('HeroMoon', 0.6, 0.6);
	scaleObject('HeroMoon', 2.0, 2.0);
	
	addLuaSprite('HeroSky', false);
	addLuaSprite('HeroMoon', false);
	addLuaSprite('HerobrineSurface', false);
	
end

function onCreatePost()
	setProperty('dad.color', getColorFromHex('a19f9f'))
	setProperty('boyfriend.color', getColorFromHex('8f8f8f'))
	setProperty('gf.color', getColorFromHex('8f8f8f'))

	if songName == 'Apparition' or songName == 'Exitium' or songName == 'A Familiar Face' then
		makeAnimatedLuaSprite('Rain_BM', 'Rain_BM', 0, -300)
		addAnimationByPrefix('Rain_BM', 'Rain falling', 'Rain falling',30,true)
		setScrollFactor('Rain_BM', 1, 1);
		scaleObject('Rain_BM', 3.5, 3.5);
		addLuaSprite('Rain_BM', true);
	end
end