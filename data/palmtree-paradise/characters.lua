function onCreate()
    makeAnimatedLuaSprite('lyn', 'characters/lyn-beach', 150, 100)
    addAnimationByPrefix('lyn', 'lyn-beach idle', 'lyn-beach idle', 24, false)
    addLuaSprite('lyn', true)
    setObjectOrder('lyn', getObjectOrder('dadGroup'))
end

function onBeatHit()
    if curBeat % 2 == 0 then
        objectPlayAnimation('lyn', 'lyn-beach idle', false)
    end
end

function onCountdownTick(c)
	playAnim('lyn', 'lyn-beach idle', true)
end