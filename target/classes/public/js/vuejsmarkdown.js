/*Instancia de Vue*/
new Vue({
	el: '#editor',
	data:
	{
		input: ''
	},
	filters:
	{
		marked: marked
	},
});