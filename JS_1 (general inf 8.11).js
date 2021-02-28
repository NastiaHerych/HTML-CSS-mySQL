//task1
let i, res;
var n = prompt("Input n: ");
res = 0;
for (i = 0; i <= n; i++) {
	res = res + i;
}


//task2
var x = prompt("Input X: ");
if (x < 0) {
  console.log("NEGATIVE NUMBER")
}
if (x > 0) {
  console.log("POSITIVE NUMBER")
}
if (x == 0) {
  console.log("YOUR NUMBER IS 0")
}


//task3
do {
  var x = prompt("2 * 5 = ");
} while (x != 10)
console.log("DONE");


//task4
var x = prompt("Input password: ");
if (x == "admin") {
  console.log("YOU ARE AUTORIZED AS ADMIN")
}
else if (x == "pass123") {
  console.log("YOU ARE AUTORIZED")
}
else {
  console.log("WRONG PASSWORD")
}


//task5
var n = 10; 
console.log(fibonacci.slice(0,n));
var fibonacci = [0, 1];

for (i = 2; i < n; i ++) {
  fibonacci[i] = fibonacci[i-1] + fibonacci[i-2];
}

console.log(fibonacci.slice(0,n));