function onCreate()
    -- background shit
    makeLuaSprite('spaceyback', 'spaceyback', -600, -300);
    setScrollFactor('spaceyback', 0.9, 0.9);

    addLuaSprite('spaceyback', false);
 setObjectOrder('dadGroup', getObjectOrder('bfGroup') + 2)
end
	


	