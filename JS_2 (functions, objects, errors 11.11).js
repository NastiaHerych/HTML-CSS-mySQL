  
//task1
let user = {};

user.name = "Пилип";
user.surname = "Шевченко";
console.log(user);

user.name = "Сергій";
console.log(user);

delete user.name;
console.log(user);


//task2
let employeeSalaries = {
    DevOps: 2000,
    JavaDeveloper: 2500,
    HR: 1000,
    QAQC: 1500,
    FullStackDeveloper: 3500
};

let salaryFund = 0;
for (let salary in employeeSalaries) {
salaryFund += employeeSalaries[salary];
}

console.log("Result: " + salaryFund);



//task3
function operation(a, b, c){
	try {
		if(isNaN(a) && isNaN(b)){
			throw "Entered incorrect number or numbers";
		}else if(c !='-' & c!='+' & c!='*' & c!='/'){
			throw "Entered incorrect operator";
		}if(a+b){
			console.log(a+b);
		}if(a-b){
			console.log(a-b);
		}if(a*b){
			console.log(a*b);
		}if(b == 0){
				throw "Divide by zero";
		}else{(a/b)
			console.log(a/b);
	}
	}catch (err) {
		console.log(err);
	}
}
console.log(operation(18, 2, "-"));
console.log(operation("h1", 0, "%"))
console.log(operation("0", 0, "/"))