//  write a function that takes an array of words or phrases and returns the longest word or phrase in the array

// declare a function that takes an array 
function longestWord(arr) {
  // declare a variable that will keep track of our longest word in the array
  var longest = ""
   // loop through the array and check the length of every word
  for (var i = 0; i < arr.length; i++) {
    // if it is greater than the length of the currently longest word... 
    if (arr[i].length > longest.length) {
      // save that word instead
      longest = arr[i];
    }
  }
  // at the end, return the longest word 
  return longest
  }


  var presidents = ["Washington", "Madison", "Lincoln", "FDR", "Kennedy"]
  console.log(longestWord(presidents))
  presidents.push("Lyndon B. Johnson")
  console.log(longestWord(presidents))


  // write a function that takes two objects and checks to see if the objects share at least one key-value pair. 

// declare a function that takes two objects
function anyInCommon(obj1, obj2) {
  //  loop through each key/value pair in obj1
  for (var key in obj1) {
    // return true if you find one key value pair that is also in obj2
    if (obj2[key]) {
      return true;
    }
  }
  // otherwise return false
  return false;
}

bozo = {
  nose: "red",
  shoeSize: 22,
  hair: "red"
}

rudolph = {
  nose: "blue",
  reins: "leather",
  present: "hay"
}

console.log(anyInCommon(bozo, rudolph))

// Write a function that takes an integer for length, and builds and returns an array
//  of strings of the given length. So if we ran your function with an argument of 3, 
//  we would get an array of 3 random words back (the words don't have to be actual 
//   sensical English words -- "nnnnfph" totally counts). The words should be of 
//  randomly varying length, with a minimum of 1 letter and a maximum of 10 letters.
//   (This involves a new trick, generating a random number, that you'll have to look
//    up, but the solution on how to do so is relatively straightforward.)


// declare an array that takes an integer 
function randomWords(len) {
  // declare an array 
  var words = [];
  // until the length of the array is equal to the integer
  for (var i = 0; i < len; i++) {
    // pick a random word length from 1 to 10
    var randomWordLength = Math.floor(Math.random() * 10);
    // declare an empty string
    var randomWord = "";
    // for the number of times of that length
    for (var i = 0; i < randomWordLength; i++) {
      alpha = "abcdefghijklmnopqrstuvwxyz";
      // pick a random word from the alphabet
      var randomLetter = alpha[Math.floor(Math.random() * alpha.length)];
      //insert it into the empty string
      randomWord += randomLetter;
    }
    // push the string into the array
    words.push(randomWord);
  }
// return the array  
return words;
}

console.log(randomWords(6));





// Add driver code that does the following 10 times: generates an array, prints the 
// array, feeds the array to your "longest word" function, and prints the result.