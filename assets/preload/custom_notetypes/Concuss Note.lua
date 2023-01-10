function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Concuss Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'noteassetshit\\FOURNOTE_assets'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'noteassetshit\\splash\\staticSplash'); -- change splash
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has no penalties
			end
		end
	end
	--debugPrint('Script started!')
end

-- Function called when you hit a note (after note hit calculations)
-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
-- noteType: The note type string/tag
-- isSustainNote: If it's a hold note, can be either true or false
function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Concuss Note' then
		characterPlayAnim('dad', 'clapped', true);
		characterPlayAnim('bf-spring', 'dodge', true);
		cameraShake(none, 0.02, 0.1); -- none is nothing anyway
	end
end

-- Called after the note miss calculations
-- Player missed a note by letting it go offscreen
function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'Concuss Note' then
		playSound('ear-ringing', 0.9);
		characterPlayAnim('dad', 'clapped', true);
		characterPlayAnim('bf-spring', 'miss', true);
                playSound('ear-ringing', 0.9);
		cameraFlash('red', '0xFFff000a', 0.1, true);
		cameraShake(none, 0.08, 0.1);
		 makeLuaSprite('image', 'blurry', 10, 0);
    addLuaSprite('image', true);
    doTweenColor('hello', 'image', 'FFFFFFFF', 0.6, 'quartIn');
    setObjectCamera('image', 'hud');
    runTimer('wait', 0.3);
	  bruh = getProperty('health');
	  setProperty('health', bruh - 0.30);
	end
end

function onTimerCompleted(tag, loops, loopsleft)
    if tag == 'wait' then
    doTweenAlpha('byebye', 'image', 0, 0.5, 'linear');
    end
end

function onTweenCompleted(tag)
    if tag == 'byebye' then
    removeLuaSprite('image', true);
    end
end