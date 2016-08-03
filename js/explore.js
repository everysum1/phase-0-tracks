// Module 7.1


// declare a function that takes a string 
function reverse(str) {
  // declare a variable inside the function that starts as an empty string
  var reversedString = "";
  // starting with the last letter, iterate over the string backwards
  for (var i = str.length - 1; i >= 0; i--){
    // add each letter onto the end of the empty string variable 
    reversedString += str[i];
  }
  // return the variable 
  return reversedString;
}

var thisIsReversed = reverse("onomonopeia");

if (true) {
  console.log(thisIsReversed);
}
