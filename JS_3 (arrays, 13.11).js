
//task 1
let products = ["Product 1", "Product 2", "Product 3", "Product 4", "Product last"];
let lastElement = products[products.length - 1];
console.log(lastElement);



// task 2
let styles = [ "Джаз", "Блюз" ];

styles.push("Рок-н-ролл");
console.log(styles);

styles.splice(-2, 1, "Класика");
console.log(styles);

console.log(styles.shift());
console.log(styles);

styles.unshift("Реп", "Реггі");
console.log(styles);



//task 3
  
function find(array, value) {
	console.log(array.indexOf(value));
}
let products = ["Product 1", "Product 2", "Product 3", "Product 4", "Product last"];
find(products, "Product 4")
find(products, "Product 6")



//task4
function filterRange(array, a, b) {
	let newArray = [];

	if ((a < 0) || (a > array.length) || (b < 0) || (b > array.length)) {
		console.log("Index is out of array!");
	} else {
		for (let i = a; i < b; i++) {
			if (!isNaN(array[i])) {
				newArray.push(array[i]);
			}
		}
	}
	return newArray;
}
let numbers = [ 0, 1, 2, "Cat", 3, 4, "Cat2", 5, 6 ];
console.log(filterRange(numbers, 2, 8));


//task 5
function camelize(str) {
	var array = str.split("-");	
	  for (var i = 1 ; i < array.length ; i++) {
	    array[i] = array[i].charAt(0).toUpperCase() + array[i].slice(1);
	  }
	  return array.join('');
}

var strArray = "my-short-string";
console.log(camelize(strArray));