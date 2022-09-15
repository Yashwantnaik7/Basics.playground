//: [Previous](@previous)

import Foundation

class LivingBeing {
    var age :Int?
    
    init(age:Int?) {
        if let age = age {
            self.age = age
        }
    }
}

class Human: LivingBeing {
    var name:String?
    
    init(name:String?, age:Int?) {
        if let name = name {
        self.name = name
        }
        super.init(age: age ?? 0)
    }
}

class Animal: LivingBeing {
    var isMammals:Bool?
    
    init(isMammals:Bool?, age:Int?) {
        if let isMammals = isMammals {
            self.isMammals = isMammals
        }
        super.init(age: age ?? 0)
    }
}

let livingBeingArray = [Animal(isMammals:true, age:12),Human(name:"Abhilash",age:25)]
print(type(of: livingBeingArray))

//iterating
for item in livingBeingArray {
if item is Animal {
print("item is of type Animal")// will get executed for first item
} else if item is Human {
print("item is of type Human")// will get executed for second item
}
}

//force unwrapping - it will cause error if down casting was of wrong type
//only use if we are sure about type
let animalObj = livingBeingArray[0] as! Animal //forced downcasting to Animal
let humanObj = livingBeingArray[1] as! Human //forced downcasting to Human

print(animalObj.isMammals)
print(humanObj.name)

//won't through an error if our down cast was wrong it return nil
let animalObj2 = livingBeingArray[0] as? Animal // success, returns Animal?
let humanObj2 = livingBeingArray[1] as? Human // success, returns Human?



