function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Blammed Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'HeatOV Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'noteassetshit\\HEATOV_assets'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'noteassetshit\\splash\\heatSplash'); -- change splash
			
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has penalties
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
	if noteType == 'HeatOV Note' then
		characterPlayAnim('dad', 'burn', true);
		characterPlayAnim('bf-spring', 'dodge', true);
		playSound('fire-blast', 0.02);
		cameraShake(none, 0.01, 0.1); -- none is nothing anyway
	end
end

-- Called after the note miss calculations
-- Player missed a note by letting it go offscreen
function noteMiss(id, noteData, noteType, isSustainNote)
    if noteType == 'HeatOV Note' then
        characterPlayAnim('dad', 'burn', true);
        playSound('fire-blast', 2);
        setProperty('health', -500);
         if getProperty('health') - 2 <= -3 then
          setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-burn', 'boyfriend');
end
   
end

end