function onCreate()
	-- background shit
        makeAnimatedLuaSprite('sky', 'sky', -600, -300);  
        makeAnimatedLuaSprite('tree', 'tree', -600, -300);
        makeAnimatedLuaSprite('road', 'road', -600, -300);
        
        addAnimationByPrefix('sky', 'idle', 'sky idle', 19, true);
        addAnimationByPrefix('tree', 'idle', 'tree idle', 19, true);
        addAnimationByPrefix('road', 'idle', 'road idle', 19, true);
	
        setScrollFactor('sky', 0.9, 0.9);
        setScrollFactor('tree', 0.89, 0.89);
        setScrollFactor('road', 0.9, 0.9);    

        objectPlayAnimation('road', 'idle', false);
        objectPlayAnimation('tree', 'idle', false);
        objectPlayAnimation('sky', 'idle', false);
	
        addLuaSprite('sky', false);
	addLuaSprite('tree', false);
        addLuaSprite('road', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end


