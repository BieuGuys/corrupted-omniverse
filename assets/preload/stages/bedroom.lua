function onCreate()

	makeLuaSprite('bedroom','bedroom',-675,-310)
	addLuaSprite('bedroom', false)
end

function onCreatePost()
	setProperty('timeBar.y', -9999)
	setProperty('timeTxt.y', -9999)
	for i = 0, getProperty('opponentStrums.length')-1 do
		setPropertyFromGroup('opponentStrums',i,'visible',false)
		setPropertyFromGroup('opponentStrums',i,'y',130)
		setPropertyFromGroup('opponentStrums',i,'x',-9999)
	end
end