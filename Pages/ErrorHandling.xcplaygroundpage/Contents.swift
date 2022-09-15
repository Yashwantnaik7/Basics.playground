//creating new error using enum
enum BikeError: Error {
    case insufficientFuelInVehicle(capacityOfTank: Int) //individual error  //'parameter' is for to catch the exact issue in catch block and the value is assign when we throw it new function/method.
    case ageLimitToRideVehicle(ageLimit:Int, riderAge: Int), checkAError //individual error
    case waitForLicense
}

struct travelStart {
    func startJourney(petrolInFuelTank: Int) throws -> String {  //imp! to add 'throws' if method throwing an error
        if(petrolInFuelTank < 10) {
            throw BikeError.insufficientFuelInVehicle(capacityOfTank:10) //thowing error
        }
        return "Happy Journey"
    }
    
    func ageLimit(age:Int, license:Bool) throws -> String {
        if(age < 18 )  {
            throw BikeError.ageLimitToRideVehicle(ageLimit: 18, riderAge: age)
            //not possible to throw multiple error in one condition
        } else if (age > 18 && license == false) {
            throw BikeError.waitForLicense
        }
        return "You are good to go"
    }
}

let objTravelStart = travelStart()


do{
    try objTravelStart.startJourney(petrolInFuelTank:4)  //execute the method in try if it contain or throws an error
} catch BikeError.insufficientFuelInVehicle(let capacity){
    debugPrint("Please refill the fuel tank inorder to start the journey \(capacity)")
}


do {
    try objTravelStart.ageLimit(age: 17,license:false)  //execute the method in try if it contain or throws an error
} catch BikeError.ageLimitToRideVehicle(let ageLimitByGov,let riderAge){
    debugPrint("You are too young at \(riderAge) to ride vehicle so wait for age of \(ageLimitByGov)")
} catch BikeError.waitForLicense {
    debugPrint("Please wait until government issues license")
}

do {
    try objTravelStart.ageLimit(age: 20,license:false)  //execute the method in try if it contain or throws an error
} catch BikeError.ageLimitToRideVehicle(let ageLimitByGov, let riderAge){
    debugPrint("You are too young at \(riderAge) to ride vehicle so wait to reach age \(ageLimitByGov)")
} catch BikeError.waitForLicense {
    debugPrint("Please wait until government issues license")
}

