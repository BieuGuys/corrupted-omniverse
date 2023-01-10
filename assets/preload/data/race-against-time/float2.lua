local timeshit = 0;
function onUpdate()
 doTweenY('playerFloatshit', 'boyfriend', (math.sin(timeshit*5)*40), 0.010, 'linear')
 timeshit = timeshit+0.01
 end