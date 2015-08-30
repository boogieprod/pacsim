Template.registerHelper 'currency', (num) ->
	'$' + Number(num).toFixed(2)
