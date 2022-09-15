struct Town {
    let name:String
    var citizens:[String]
    var resource:[String]
    
    init(name:String, citizens:[String], resource:[String]) {
        self.name = name
        self.citizens = citizens
        self.resource = resource
    }
    
    /*
    func addResource() {
        resource.append("rice")  //immutable - not possible to make changes bez by default value which is initialize by init will be constant.
    }
     
     */
    
    //solution
    mutating func addResource() {
        resource.append("rice")
    }
}


var objTown = Town(name:"Delhi",citizens:["indian","nepali"], resource:["wheet", "sun flower oil"])
print(objTown.name,objTown.citizens)

objTown.addResource() //gives error if objTown is declared with let keyword

print(objTown.resource)
