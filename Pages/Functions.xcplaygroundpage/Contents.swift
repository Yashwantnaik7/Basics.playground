func simpleFun() {
    print("Simple function")
}

simpleFun()

func funWithPara(name:String) {
    print("Hello \(name)")
}

funWithPara(name: "Yash")

func funWithAlias(name n:String) {
    print("How are you? \(n)")
}

funWithAlias(name: "Jai")

func funWithNoName(_ name: String) {
    print("this is sir name \(name)")
}

funWithNoName("Naik")

//function inside any scope like class or struct will be considered as method
class myClass {
    func myMethod() {
        print("this is method inside myclass")
    }
}

let objMyClass = myClass()
objMyClass.myMethod()  //this is method
