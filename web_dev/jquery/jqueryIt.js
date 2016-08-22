$(document).ready(function() {
	$('#pressMe').click(function() {
		colors = ["lawngreen", "crimson", "gold", "fuschia", "aqua", "orange", "purple", "chartreuse", "coral", "deeppink"]
		len = colors.length
		$('.container').css("background-color", colors[Math.floor(Math.random() * len)])
	})
})