function onCreate()
	-- background shit
	makeLuaSprite('test', 'test', -600, -300);
        makeLuaSprite('test2', 'test2', -600, -300);
	
        setScrollFactor('test', 0.9, 0.9);
	setScrollFactor('test2', 0.9, 0.9);
	
        addLuaSprite('test', false);
        addLuaSprite('test2', true);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end