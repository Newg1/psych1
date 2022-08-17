function onCreate()
    makeAnimatedLuaSprite('IFH', 'IFH', -80, -90)
    addAnimationByPrefix('IFH', 'IFH', 'IFH', 24, true)
    addLuaSprite('IFH', false)
    setObjectCamera('IFH', 'hud') 
    objectPlayAnimation('IFH', 'IFH', linear) 
    makeAnimatedLuaSprite('FH', 'FH', -80, -90)
    addAnimationByPrefix('FH', 'FH', 'FH', 24, true)
    addLuaSprite('FH', false)
    setObjectCamera('FH', 'hud') 
    objectPlayAnimation('FH', 'FH', linear) 
end

function onStartCountdown()
    doTweenAlpha('FH', 'FH', 0, 0.1, linear)
end

function onStepHit()
    if curStep == 7 then
        doTweenAlpha('IFH', 'IFH', 0, 0.1, linear)
end
    if curStep == 114 then
        doTweenAlpha('FH', 'FH', 1, 0.1, linear)
    elseif curStep == 119 then
        doTweenAlpha('FH', 'FH', 0, 0.1, linear)
    end
end
function onSongStart()
    noteTweenX("NoteMove1", 4, 95, 0.1, cubeInOut)
    noteTweenX("NoteMove2", 5, 203, 0.1, cubeInOut)
    noteTweenX("NoteMove3", 6, 315, 0.1, cubeInOut)
    noteTweenX("NoteMove4", 7, 425, 0.1, cubeInOut)
    noteTweenX("NoteMove5", 0, 730, 0.1, cubeInOut)
    noteTweenX("NoteMove6", 1, 843, 0.1, cubeInOut)
    noteTweenX("NoteMove7", 2, 956, 0.1, cubeInOut)
    noteTweenX("NoteMove8", 3, 1070, 0.1, cubeInOut)
end    
function onUpdate(elapsed)
               --Hub--
setProperty('healthBar.visible', true)
setProperty('healthBarBG.visible', true)
setProperty('iconP1.visible', true)
setProperty('iconP2.visible', true)
setProperty('timeBar.visible', true)
setProperty('timeBarBG.visible', true)
setProperty('timeTxt.visible', true)
setProperty('scoreTxt.visible', true)
setProperty('scoreTxt.visible', true)

end

local angleshit = 1;
local anglevar = 1;

function onBeatHit()
	if curBeat < 9999 then

		if curBeat % 2 == 0 then
			angleshit = anglevar;
		else
			angleshit = -anglevar;
		end
		setProperty('iconP1.angle',angleshit*11)
		setProperty('iconP1.angle',angleshit*11)
		doTweenAngle('turn', 'iconP1', angleshit, stepCrochet*0.007, 'linear')
		doTweenX('tuin', 'iconP1', -angleshit*8, crochet*0.004, 'linear')
		doTweenAngle('tt', 'iconP1', angleshit, stepCrochet*0.007, 'linear')
		doTweenX('ttrn', 'iconP1', -angleshit*8, crochet*0.004, 'linear')
		setProperty('iconP2.angle',angleshit*11)
		setProperty('iconP2.angle',angleshit*11)
		doTweenAngle('turnn', 'iconP2', angleshit, stepCrochet*0.007, 'linear')
		doTweenX('tuinn', 'iconP2', -angleshit*8, crochet*0.004, 'linear')
		doTweenAngle('ttt', 'iconP2', angleshit, stepCrochet*0.007, 'linear')
		doTweenX('ttrnn', 'iconP2', -angleshit*8, crochet*0.004, 'linear')
	else
		setProperty('iconP1.angle',0)
		setProperty('iconP1.x',0)
		setProperty('iconP1.x',0)
		setProperty('iconP2.angle',0)
		setProperty('iconP2.x',0)
		setProperty('iconP2.x',0)
	end
		
end