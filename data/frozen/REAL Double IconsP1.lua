function onCreate()
    precacheImage('icons/gf1') -- change "iconnamefile" to your correct file
    precacheImage('icons/gf1') -- change "iconnamefile" to your correct file
end

function onUpdate(elapsed)
    if getProperty('health') < 0.4 then
        setProperty('iconnameP1.visible', false) -- change "iconnameP1" to your correct name
        setProperty('iconnameloseP1.visible', true) -- change "iconnameloseP1" to your correct name
    else
        setProperty('iconnameP1.visible', true) -- change "iconnameP1" to your correct name
        setProperty('iconnameloseP1.visible', false) -- change "iconnameloseP1" to your correct name
    end
end


function onCreatePost()
        makeLuaSprite('iconnameP1', 'icons/gf1', getProperty('iconP1.x'), getProperty('iconP1.y')) -- change "iconnamefile" to your correct file
        setObjectCamera('iconnameP1', 'hud') -- change "iconnameP1" to your correct name
        addLuaSprite('iconnameP1', true) -- change "iconnameP1" to your correct name
        setObjectOrder('iconnameP1', getObjectOrder('iconP1') + 1) -- change "iconnameP1" to your correct name
        setProperty('iconnameP1.flipX', true) -- change "iconnameP1" to your correct name
        setProperty('iconnameP1.visible', true) -- change "iconnameP1" to your correct name

        makeLuaSprite('iconnameloseP1', 'icons/gf1', getProperty('iconP1.x'), getProperty('iconP1.y')) -- change "iconnamefile2" to your correct file
        setObjectCamera('iconnameloseP1', 'hud') -- change "iconnameloseP1" to your correct name
        addLuaSprite('iconnameloseP1', true) -- change "iconnameloseP1" to your correct name
        setObjectOrder('iconnameloseP1', getObjectOrder('iconP1') + 1) -- change "iconnameloseP1" to your correct name
        setProperty('iconnameloseP1.flipX', true) -- change "iconnameloseP1" to your correct name
        setProperty('iconnameloseP1.visible', false) -- change "iconnameloseP1" to your correct name
end

function onUpdatePost(elapsed)
        setProperty('iconnameP1.x', getProperty('iconP1.x') + 50) -- icon location X (firstIcon) and change "iconnameP1" to your correct name
        setProperty('iconnameP1.angle', getProperty('iconP1.angle')) -- change "iconnameP1" to your correct name
        setProperty('iconnameP1.y', getProperty('iconP1.y') - 50) -- icon location Y (firstIcon) and change "iconnameP1" to your correct name
        setProperty('iconnameP1.scale.x', getProperty('iconP1.scale.x') - 0.06) -- icon size X (firstIcon) and change "iconnameP1" to your correct name
        setProperty('iconnameP1.scale.y', getProperty('iconP1.scale.y') - 0.06) -- icon size Y (FirstIcon) and change "iconnameP1" to your correct name

        setProperty('iconnameloseP1.x', getProperty('iconP1.x') + 50) -- icon location X (losedIcon) and change "iconnameloseP1" to your correct name
        setProperty('iconnameloseP1.angle', getProperty('iconP1.angle')) -- change "iconnameloseP1" to your correct name
        setProperty('iconnameloseP1.y', getProperty('iconP1.y') - 50) -- icon location Y (loseIcon) and change "iconnameloseP1" to your correct name
        setProperty('iconnameloseP1.scale.x', getProperty('iconP1.scale.x') - 0.06) -- icon size X (loseIcon) and change "iconnameloseP1" to your correct name
        setProperty('iconnameloseP1.scale.y', getProperty('iconP1.scale.y') - 0.06) -- icon size Y (loseIcon) and change "iconnameloseP1" to your correct name
end
