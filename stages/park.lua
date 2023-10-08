
--How makeLuaSprite works:
--makeLuaSprite(<SPRITE VARIABLE>, <SPRITE IMAGE FILE NAME>, <X>, <Y>);
--"Sprite Variable" is how you refer to the sprite you just spawned in other methods like "setScrollFactor" and "scaleObject" for example

--so for example, i made the sprites "stagelight_left" and "stagelight_right", i can use "scaleObject('stagelight_left', 1.1, 1.1)"
--to adjust the scale of specifically the one stage light on left instead of both of them

function onCreate()
	-- background shit
	makeLuaSprite('parkback', 'park/park_bg', -600, -300);
	setScrollFactor('parkback', 0.9, 0.9);
	
	makeLuaSprite('parkfront', 'park/park_fg', -600, -150);
	setScrollFactor('parkfront', 0.9, 0.9);

	addLuaSprite('parkback', false);
	addLuaSprite('parkfront', false);
end