function onCreate()
	-- background shit
	
	makeLuaSprite('bars', 'bars', -500, 700);
	setScrollFactor('bars', 0, 0);
	scaleObject('bars', 6, 6);
	setObjectOrder('bars', 6)
	setProperty('bars.antialiasing', true)

	makeLuaSprite('bar', 'bar', -500, -950);
	setScrollFactor('bar', 0, 0);
	scaleObject('bar', 6, 6);
	setObjectOrder('bar', 7)
	setProperty('bar.antialiasing', true)

	makeLuaSprite('forestsky', 'forestsky', -600, -100);
	setScrollFactor('forestsky', 0.3, 0.3);
	scaleObject('forestsky', 4, 4);
	setProperty('forestsky.antialiasing', true)

	makeLuaSprite('trees', 'trees', -600, -100);
	setScrollFactor('trees', 1, 1);
	scaleObject('trees', 0.3, 0.3);
	setProperty('trees.antialiasing', true)

	makeLuaSprite('forestfloor', 'forestfloor', -2000, 150);
	setScrollFactor('forestfloor', 1, 1);
	scaleObject('forestfloor', 0.6, 0.6);
	setProperty('forestfloor.antialiasing', true)

	makeLuaSprite('tbl', 'tbl', -1200, -300);
	setScrollFactor('tbl', 0.8, 0.8);
	scaleObject('tbl', 2, 2);
	setObjectOrder('tbl', 3)
	setProperty('tbl.antialiasing', true)

	makeLuaSprite('tbr', 'tbr', 600, -250);
	setScrollFactor('tbr', 0.9, 0.9);
	scaleObject('tbr', 2, 2);
	setObjectOrder('tbr', 3)
	setProperty('tbr.antialiasing', true)

	makeAnimatedLuaSprite('firepit','firepit', 120, -200)addAnimationByPrefix('firepit','dance','firepit fire',24,true);
	objectPlayAnimation('firepit','dance',false)
	scaleObject('firepit', 0.6, 0.6)
	setScrollFactor('firepit', 1, 1)

	makeAnimatedLuaSprite('chester','chester', 100, 130)addAnimationByPrefix('chester','dance','chester bounce',24,true);
	objectPlayAnimation('chester','chester bounce',true)
	scaleObject('chester', 0.4, 0.4)
	setScrollFactor('chester', 1, 1)

	makeAnimatedLuaSprite('alchem','alchem', 600, -50)addAnimationByPrefix('alchem','dance','alchem bounce',24,true);
	objectPlayAnimation('alchem','alchem bounce',true)
	scaleObject('alchem', 0.5, 0.5)
	setScrollFactor('alchem', 1, 1)

	makeLuaSprite('overlay', 'overlay', -800, -500);
	scaleObject('overlay', 2, 2);
	setScrollFactor('overlay', 0, 0);
	setBlendMode('overlay', 'multiply');
	setProperty('overlay.alpha', 1);

	makeLuaSprite('vignette', 'vignette', -250, -200);
	scaleObject('vignette', 0.9, 0.9);
	setScrollFactor('vignette', 0, 0);

	addLuaSprite('bars', true);
	addLuaSprite('bar', true);
	addLuaSprite('forestsky', false);
	addLuaSprite('forestfloor', false);
	addLuaSprite('trees', false);
	addLuaSprite('chester', false);
	addLuaSprite('alchem', false);
	addLuaSprite('firepit', false);
	addLuaSprite('tbl', false);
	addLuaSprite('tbr', false);
	addLuaSprite('overlay', true);
	addLuaSprite('vignette', true);
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end