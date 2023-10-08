
--How makeLuaSprite works:
--makeLuaSprite(<SPRITE VARIABLE>, <SPRITE IMAGE FILE NAME>, <X>, <Y>);
--"Sprite Variable" is how you refer to the sprite you just spawned in other methods like "setScrollFactor" and "scaleObject" for example

--so for example, i made the sprites "stagelight_left" and "stagelight_right", i can use "scaleObject('stagelight_left', 1.1, 1.1)"
--to adjust the scale of specifically the one stage light on left instead of both of them

function onCreate()
	-- background shit
	makeLuaSprite('night', 'night/night', -150, -600);
	setScrollFactor('night', 0.9, 0.9);
	scaleObject('night', 2.5, 2.5);
	
	makeLuaSprite('bench', 'night/bench', 600, 240);
	setScrollFactor('bench', 1, 1);

	addLuaSprite('night', false);
	addLuaSprite('bench', false);
end

function onBeatHit()
	if current % 2 == 0 and curStep > 1760 then
	triggerEvent('Play Animation', 'kiss', 'bf');
	end
end