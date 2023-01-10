function onCreate()
       makeAnimatedLuaSprite('mrsmoothy', 'mrsmoothy', -600, -300);

       makeLuaSprite('mrsmoothytrees', 'mrsmoothytrees', -600, -300);

       addAnimationByPrefix('mrsmoothy', 'idle', 'mrsmoothy idle', 19, true);

       objectPlayAnimation('mrsmoothy', 'idle', false);  
       
       setScrollFactor('mrsmoothy', 0.9, 0.9);
       setScrollFactor('mrsmoothytrees', 0.89, 0.89);


    addLuaSprite('mrsmoothy', false);
    addLuaSprite('mrsmoothytrees', false);
end

	


	