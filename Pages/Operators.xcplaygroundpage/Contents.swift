
//operators

//assignment operator
var a = 10 // here = is for assignment of value 10 to a
var (j,k) = (10,20) // assigning multiple values to multiple variable

//arthmatic operator
// + - / %

//convert + to -
var x = 9%2
var min = -x
print(x,min)

//convertion not possible in this for - to +
var y = -19
var noPositive = +y
print(y,noPositive)

//compound assignment
//shortcut to add value to same variable.
var z=1
z+=2
print(z)

//comparison operator
// == > < >= <= !=

var name = "yash"

if name == "yash" {  // there is no () for condition
    print(name)
}

var know = (1,"cat") < (2,"apple")
print(know)  //true bez 1 is less than 2 and cat is not compared with apple

know = (3,"apple")<(2,"cat")
print(know)

know = (3,"apple") == (3,"apple")
print(know)

//ternary operator
var v = 10
var b = true
let result = v + (b ? 10:20)
print(result)

//Optional binding
var ab : Int? = nil
var ba : Int = 30

if let ji = ab {
    print("if true",ji)
}
else {
    print("if false")
}

var bol:Bool?=nil
print(bol ?? false)

//check for nil
print(ab != nil ? ab! : ba) // ab! bez value given to this is optional so.

//nil coalescling operator ??
let defaultColorName:String = "red"
let checkColor:String? = nil

var resultColor = checkColor ?? defaultColorName

print(resultColor)

//optional chaining
struct myOptional {
    var name:String
    func method() {
        print("optional method")
    }
}

var objMyOptional : myOptional?
objMyOptional = myOptional(name:"Yash")
print(objMyOptional?.name ?? "no name")
objMyOptional?.method()

//Range operator

//closed range
for i in 1...5 {
    print(i)
}

//half closed range
var myArray = ["yash","kakshi","minato","naruto","itachi"]
let count = myArray.count
for i in 0..<count { //previous value of count will not be consider
    print(myArray[i])
}

print(myArray.contains("yash"))

//one side range
for i in myArray[2...] {
    print("one side range", i)
}

for i in myArray[...2] {
    print("one side right", i)
}

//logical operator

let e = false
let f = true
let h = false
let jm = false

if e && f || h || jm {
    print("access")
}
else {
    print("denied")
}

let heart = "\u{1F496}"
print(heart)

for _ in 1...10{
    print(Int.random(in: 0...10), terminator: " ")  //random value
}



