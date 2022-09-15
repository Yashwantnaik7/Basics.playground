//creating empty dictionary
var myDict:[Int:String] = [:]

//adding
myDict[16]="sixteen" //16 is key to sixteen not a index of sixteen in dictionary

//make it empty again
myDict = [:]

//counting
myDict.count

//isEmpty
if myDict.isEmpty {
    print("yes")
}
else {
    print("no")
}

//adding
var airports:[String:String] = [:]

airports["LHR"] = "London"

//changing value
airports["LHR"] = "London Hecedc"

//updating
let oldVal = airports.updateValue("Londan JNk", forKey: "LHR")

//removing
airports["LHR"] = nil

//removed value
let rmVal = airports.removeValue(forKey: "LHR")

//iterating
for(codeAir,nameAir) in airports {
    print(codeAir,nameAir)
}

for keyAir in airports.keys {
    print(keyAir)
}

for valueAir in airports.values {
    print(valueAir)
}

