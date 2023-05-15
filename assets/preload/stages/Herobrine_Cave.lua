function onCreate()
	-- background shit
	makeLuaSprite('CaveBack', 'CaveBack', -600, -300);
	setScrollFactor('CaveBack', 1.0, 1.0);
	scaleObject('CaveBack', 1.2, 1.2);

	makeLuaSprite('Effect', 'Effect', -600, -300);
	setScrollFactor('Effect', 1.0, 1.0);
	scaleObject('Effect', 1.2, 1.2);

	makeAnimatedLuaSprite('HB_BG','HB_BG',-390,-150)
	addAnimationByPrefix('HB_BG','dance','BG',24,true)
	objectPlayAnimation('HB_BG','dance',false)
	setScrollFactor('HB_BG', 1.0, 1.0);
	scaleObject('HB_BG', 1.2, 1.2);

	addLuaSprite('CaveBack', false);
	addLuaSprite('HB_BG', false);
	addLuaSprite('Effect', true);
end
 
function onCreatePost()
	setProperty('gf.visible',false)
end
