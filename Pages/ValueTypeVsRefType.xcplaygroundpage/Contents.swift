// structure is value type
//value type means the each object is stored in different memory location so changes made to the data in one object won't affect another object
//basically it is not shared

struct myStruct {
    var name:String
    var age:Int
    
    init(name:String,age:Int) {
        self.name = name
        self.age = age
    }
    func sayHi() {
        print("Hello there \(name)")
    }
}

var objMyStructOne = myStruct(name: "yashwant", age: 20)
var objMyStructTwo = objMyStructOne

objMyStructOne.sayHi() 
objMyStructTwo.name = "jai kumar"
objMyStructOne.sayHi() //name is not change bez not shared


//class is reference type
//reference type is shared means data will be changed for all object if one of the object is changed
class myClass {
    var name:String
    var age:Int
    
    init(name:String,age:Int) {
        self.name = name
        self.age = age
    }
    func sayHi() {
        print("Hello there \(name)")
    }
}

var objMyClassOne = myClass(name: "yash", age: 20)
var objMyClassTwo = objMyClassOne

objMyClassOne.sayHi()
objMyClassTwo.name = "jai"
objMyClassOne.sayHi() //name is changed bez it is reference type. so it shares it's value with other obj

