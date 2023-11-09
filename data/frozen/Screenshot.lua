function onCreatePost()
  luaDebugMode = true -- shows errors if you fucked up
  makeLuaSprite('ending', 'screenshot', 400, 100);
  setObjectCamera('ending', 'camOther');
  setProperty('ending.alpha', 0.01);
  addLuaSprite('ending', true);
end

function onEndSong()
if isStoryMode then
    doTweenAlpha('tweenEndImg', 'ending', 1, 5, 'linear');
    runTimer('endDaSong', 6);
    return Function_Stop
end
end

function onTimerCompleted(tag)
  if tag == 'endDaSong' then
    exitSong(false);
  end
end
