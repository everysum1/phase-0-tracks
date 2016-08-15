console.log("This is working");

function cycleColor () {
  var colors = [ "red", "blue", "green", "yellow", "orange", "purple"]
  document.body.style.backgroundColor = colors[Math.floor(Math.random() * colors.length)]
}

var btn = document.getElementById("btn");

btn.addEventListener("click", cycleColor);