local timeshit = 0;
function onUpdate()
 doTweenY('opponentFloatshit', 'dad', (math.sin(timeshit*5)*40), 0.001, 'linear')
 timeshit = timeshit+0.01
 end