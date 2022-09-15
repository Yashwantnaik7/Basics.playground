//normal function
func myFun() {
    print("this is the normal function")
}
 var variableOfFun = myFun  //this is how we assign function to variable

variableOfFun()

func calc(n1:Int, n2:Int, operation:(Int,Int) -> Int) -> Int {
    return operation(n1,n2)
}

func add(no1:Int, no2: Int) -> Int {
    return no1+no2
}

calc(n1: 12, n2: 12, operation: add)

//closure - anonymous function used to execute set of intruction

let resultAdd = calc(n1:23, n2: 12, operation: { (n1, n2) in return n1+n2 }) //return key also not mandatory
print(resultAdd)

calc(n1:23, n2: 12, operation: { $0+$1 }) //shortcut

var addTwoNumberClosure:(_ numberOne:Int, _ numberTwo:Int) -> Int = {
    (numberOne:Int, numberTwo:Int) -> Int in
    return numberOne+numberTwo
}

let result = addTwoNumberClosure(1,1)

 //better one

var variableOfClosure:(Int,Int) -> Int = {
    (numberOne, numberTwo) in     //best practice
    //logic starts here
    return numberOne+numberTwo
}

let resultNew = variableOfClosure(1,2)
print(resultNew)

//shortcut

var variableOfClosureShortCut:(Int,Int) -> Int = {
    return $0+$1
}

//typealias - useful when use same type more often

typealias addingAlias = (_ numberOne:Int, _ numberTwo:Int) -> Int

var addTwoNumberClosureAlias: addingAlias = {
    (numberOne,numberTwo) in
    return numberOne+numberTwo
}

let result3 = addTwoNumberClosure(1,1)


//function call sequence with closure - used inorder to aviod the unneccesary call of function

//problem

func assignName(_ name:String) -> String {
    debugPrint("assign name is called")
    return name
}

func sayMyName(namePresent:Bool, name: String) {
    if namePresent {
        print(name)
    }
}

sayMyName(namePresent: true, name: assignName("yash"))
sayMyName(namePresent: false, name: assignName("jai"))

//solution

func sayMyNameSol(namePresent:Bool, name: () -> String) {
    if namePresent {
        print(name())
    }
}

sayMyNameSol(namePresent: true){
    () -> String in
    assignName("yash")
}

sayMyNameSol(namePresent: false){
    () -> String in
    assignName("jai")
}

//easy approach
//autoclosure -  to make sequence call of function easy

func sayMyNameSolAuto(namePresent:Bool, name:@autoclosure () -> String) {
    if namePresent {
        print(name())
    }
}


sayMyNameSolAuto(namePresent: true, name:assignName("yash3"))

sayMyNameSolAuto(namePresent: false, name:assignName("jai3"))


