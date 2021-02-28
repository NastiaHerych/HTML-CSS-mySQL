//Class work
/*function CompareNumeric(a, b) {
    if (a > b) return 1;
    if (a < b) return -1;
}
var arr = [1, 2, 15]
arr.sort(CompareNumeric);
//console.log(CompareNumeric(2, 15));
console.log(arr);

var arr = ["Apple", "Orange", "Cat"];
arr.forEach(function (item, i, arr) {
    alert(i + ":" + item + "(massive: " + arr + ")");
});


var arr = [1, -1, 2, -2, 3];
var positiveArr = arr.filter(function (number) {
    return number > 0;
});
console.log(positiveArr);


var arr = [1, -1, 2, -2, 3];
var negativeArr = arr.filter(function (number) {
    return number < 0;
});
console.log(negativeArr);



var names = ['HTML', 'CSS', 'JS'];
var nameLengths = names.map(function (name) {
    return name.length; 
});
alert(name.length);


var str = "one, two, three";
var n = str.indexOf("one");
console.log(n);



var names = ['HTML', 'CSS', 'JS'];
var nameLengths = names.map(function (name) {
    return name.indexOf("T");
});
alert(nameLengths);


//var arr = [1, -1, 2, -2, 3];
var arr = [2, 4, 6]
function isParne(number) {
    return number % 2;
}
console.log(arr.every(isParne));
console.log(arr.some(isParne));


var arr = [1, 2, 3, 4, 5]
var result = arr.reduce(function (sum, current) {
    return sum + current;
}, 2);
console.log(result);


var arr = [1, 2, 3, 4, 5]
var result = arr.reduce(function (sum, current) {
    console.log(sum)
    return sum + current;
});
console.log(result);


function go (a= 2, b)*/

//Home work
//task1
let array = [10, 20, - 3, 111, -345, 12, 0, 1, -24, -11, 76,
    65, 33, -35, 98, 7, 23, 234, -43, -500]


function difference(num1, num2) {
    return num1 - num2;
}

array.sort(difference);
console.log("ascending order: ");
console.log( array);

array.sort(difference).reverse();
console.log("descending order: " );
console.log( array);

//task2
function getPositive(number) {
    return number >= 0;
}

function getNagative(number) {
    return number < 0;
}

let positiveArray = array.filter(getPositive).sort(difference);
console.log("Positive: " );
console.log( positiveArray);

let negativeArray = array.filter(getNagative).sort(difference);
console.log("Negative:" );
console.log(negativeArray);


//task 3
let student1 = { age: 18, groupName: "FEI-21" };
let student2 = { age: 16, groupName: "FEP-23" };
let student3 = { age: 23, groupName: "FES-21" };
let student4 = { age: 24, groupName: "FEI-13" };
let student5 = { age: 20, groupName: "XIO-23" };
let student6 = { age: 18, groupName: "FES-22" };
let student7 = { age: 19, groupName: "FEP-23" };
let student8 = { age: 19, groupName: "XIO-22" };
let student9 = { age: 23, groupName: "FEP-21" };
let student10 = { age: 21, groupName: "FES-23" };

let students = []; 
students.push(student1, student2, student3, student4, student5,
    student6, student7, student8, student9, student10);

function getGroupName(student) {
    return student.groupName;
}

let listOfGroups = students.map(getGroupName).sort();
console.log("List of groups: ")
console.log(listOfGroups);

function sumAge(age, currentStud) {
    return age + currentStud.age;
}

let totalAge = students.reduce(sumAge, 0);
console.log("Sum age: ")
console.log(totalAge);


function isAdult(age) {
    return age >= 18;
}
console.log("Is all adults?")
console.log(students.every(isAdult));
//console.log(students.some(isAdult));