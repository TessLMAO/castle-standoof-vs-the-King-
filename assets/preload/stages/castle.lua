
local u = false;
local r = 0;
local i =0
local shot = false;
local agent = 1
local health = 0;
local xx = 455;
local yy = 370;
local xx2 = 550;
local yy2 = 490;
local ofs = 20;
local followchars = true;
local del = 0;
local del2 = 0;
function onCreate()
    setProperty('defaultCamZoom', 0.7)
    makeLuaSprite('bartop','',0,-30)
    makeGraphic('bartop',1280,100,'000000')
    addLuaSprite('bartop',true)
    setObjectCamera('bartop','hud')
    setScrollFactor('bartop',0,0)

    makeLuaSprite('barbot','',0,650)
    makeGraphic('barbot',1280,100,'000000')
    addLuaSprite('barbot',true)
    setScrollFactor('barbot',0,0)
    setObjectCamera('barbot','hud')

    makeLuaSprite('back', 'back', -700, -300);
	setScrollFactor('back', 0, 0);
    scaleObject('back', 1.1, 1.1)
    addLuaSprite('back', false)

    makeLuaSprite('castle', 'castle', -700, -200);
	setScrollFactor('castle', 0.2, 0.2);
    scaleObject('castle', 1, 1)
    addLuaSprite('castle', false)

    makeLuaSprite('cards', 'cards', -300, -200);
	setScrollFactor('cards', 0.5, 0.5);
    scaleObject('cards', 1, 1)
    addLuaSprite('cards', false)

    makeAnimatedLuaSprite('fountain','fountain', -50, -1800)
	scaleObject('fountain', 0.9, 0.9)
	setScrollFactor('fountain', 0.8, 0.8)
    objectPlayAnimation('fountain','fountain flow',true);
    addAnimationByPrefix('fountain','dance','fountain flow',24,true);
    addLuaSprite('fountain', false)

    makeLuaSprite('ground', 'ground', -1100, 0);
	setScrollFactor('ground', 1, 1);
    scaleObject('ground', 0.9, 0.9)
    addLuaSprite('ground', false)

    makeLuaSprite('spike', 'spike', -900, 200);
	setScrollFactor('spike', 2, 2);
    scaleObject('spike', 1.1, 1.1)
    addLuaSprite('spike', true)

    makeLuaSprite('overlay', 'overlay', 100, -650);
	setScrollFactor('overlay', 0, 0);
    scaleObject('overlay', 0.8, 0.8)
    addLuaSprite('overlay', true)
    setBlendMode('overlay', 'add');
    setProperty('overlay.alpha', 0.5)

end

function onUpdate(elapsed)

	daElapsed = elapsed * 30
	i = i + daElapsed

	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
     if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom',0.65)
            
        
        else
      
            setProperty('defaultCamZoom',0.65)
            
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
    
end

function onCountdownStarted()
	setPropertyFromGroup('playerStrums', 0, 'x', 50)
    setPropertyFromGroup('playerStrums', 1, 'x', 160)
    setPropertyFromGroup('playerStrums', 2, 'x', 270)
    setPropertyFromGroup('playerStrums', 3, 'x', 380)

    setPropertyFromGroup('opponentStrums', 0, 'x', 800);
	setPropertyFromGroup('opponentStrums', 1, 'x', 910);
	setPropertyFromGroup('opponentStrums', 2, 'x', 1020);
	setPropertyFromGroup('opponentStrums', 3, 'x', 1130);

end

function onUpdatePost()

    P1Mult = getProperty('healthBar.x') + ((getProperty('healthBar.width') *        getProperty('healthBar.percent') * 0.01) + (150 * getProperty('iconP1.scale.x') - 150) / 2 - 26)

    P2Mult = getProperty('healthBar.x') + ((getProperty('healthBar.width') * getProperty('healthBar.percent') * 0.01) - (150 * getProperty('iconP2.scale.x')) / 2 - 26 * 2)

    setProperty('iconP1.x',P1Mult - 70)

    setProperty('iconP1.origin.x',240)

    setProperty('iconP1.flipX',true)

    setProperty('iconP2.x',P2Mult + 110)

    setProperty('iconP2.origin.x',-100)

    setProperty('iconP2.flipX',true)

    setProperty('healthBar.flipX',true)

end