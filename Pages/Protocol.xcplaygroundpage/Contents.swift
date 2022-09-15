protocol Car {
    func start()
    func horn()
    func breakApply()
    func stop()
}

class Rogue: Car {
    func start() {
        print("Rogue started")
    }
    func horn() {
        print("Rogue honk honk")
    }
    func breakApply() {
        print("Rogue break applied")
    }
    func stop() {
        print("Rogue stoped")
    }
}

class Audi: Car {
    func start() {
        print("Audi started")
    }
    func horn() {
        print("Audi honk honk")
    }
    func breakApply() {
        print("Audi break applied")
    }
    func stop() {
        print("Audi stoped")
    }
}



class Person {
    func driveCar(car: Rogue) {  //tightly coupled bez person can not drive other car than Rogue
        car.start()
    }
}

let objPerson = Person()
let objRogue = Rogue()
objPerson.driveCar(car: objRogue)





//make it loosely coupled so that person should be able to drive any car
class PersonNew {
    func driveCarAny(car: Car) { //Car must be inherited by Rogue and Audi to use
        car.start()
    }
}

let objPersonNew = PersonNew()
let objAudi = Audi()
objPersonNew.driveCarAny(car: objRogue)
objPersonNew.driveCarAny(car: objAudi)

