//delegate comes handy when we call one class to do work and that will assign the work to another class to do.

//use protocol to confirm another class also know that perticular task

protocol AdvanceLifeSupport { //certification
    func performCPR()
}

class EmergencyCallHandler {
    var delegate:AdvanceLifeSupport?
    
    func medicalEmergency() {  //when work comes will assign that work to paramedic who owns delegate of EmergencyCallHandler's
        delegate?.performCPR()
    }
    
}

class paramedic:AdvanceLifeSupport { //inherit protocol to perform certain task
    
    init(handler:EmergencyCallHandler) {
        handler.delegate =  self    //this will assign delegate to paramedic(jai) from EmergencyCH(yash)
    }
    
    func performCPR() {
        print("performing CPR")
    }
}


let yash = EmergencyCallHandler()

let jai = paramedic(handler:yash)

yash.medicalEmergency()


