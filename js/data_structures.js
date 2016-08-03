var colors = [ "blue", "red", "purple", "yellow"]
var names = ["Ed", "Billy Bob", "Super Horse", "Juan"]

colors.push("mauve");
names.push("Umberto");


// write a function that will take two arrays and return an object

// declare a function with two parameters
function combineArray(arr1, arr2) {
    // check that the two arrays are of the same length
    if (arr1.length === arr2.length) {
        // declare an empty object
        var horses = {};
        //  loop through first array's length
        for (var i = 0; i < arr1.length; i++){
            // for each element in array, assign key value pair 
            horses[arr1[i]] = arr2[i];
        }
        return horses;
    } else {
        console.log("Sorry, cannot combine two arrays of different lengths.")    
    }
}
combineArray(names, colors);

function Car(model, color, year){
    this.model = model;
    this.color = color;
    this.year = year;
    
    this.startCar = function(){
        console.log(this.model + " started");
    }
}


car1 = new Car("Toyota", "silver", 2006);
car2 = new Car("Maserati", "black", 2016);
car3 = new Car("Ferrari", "red", 1980);
car2.startCar();
car3.startCar();


for (var key in car1) {
    console.log(key + ": " + car1[key])
}

