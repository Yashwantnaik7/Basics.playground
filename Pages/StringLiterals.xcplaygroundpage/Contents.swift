//string interpolation
let s:String = "Hello"
let name:String = "Yash"

print("This is \(s) to \(name)")

//empty string
var ss:String

let emptyString:String = ""
let anotherEmptyString:String = String()

if emptyString == anotherEmptyString {
    print("both are same")
}

//method to check, is string empty?
if emptyString.isEmpty {
    print("Nothing to see here")
}

//creating sign in string
let signString:String = "\u{24}"
print(signString)

//escaping quotation
let mySt:String = """
hello team,\t\"""howareyou\"""
"""

print(mySt)

//if we use single quote in three double quote then No Problem
let mySTR: String = """
this is an example of "single" quote in three quote
"""
//"""
print(mySTR)


//converting character array into string
let characterC: [Character] = ["y", "a", "s", "h"]
let strMessage = String(characterC)
print(strMessage)

//we can count character in string also
var sss = "hello world how are you"
let cc = sss.count
print(cc)

//Indexing
var indexStr: String = "Yashwant Naik"
// indexStr[0]  error
indexStr.startIndex
indexStr.firstIndex(of: "a") //we won't get index of 'a' in Int
print(type(of:indexStr.startIndex))
print(indexStr[indexStr.startIndex])
print(indexStr[indexStr.index(before: indexStr.endIndex)])
print(indexStr[indexStr.index(after: indexStr.startIndex)])
indexStr[indexStr.index(after: indexStr.firstIndex(of: "s")!)]
indexStr[..<(indexStr.firstIndex(of: "N") ?? indexStr.index(before: indexStr.endIndex))]


//getting index of string
let sbn = "Are you coder?"
for i in sbn.indices {
    print(sbn[i], terminator: "")
}

//insertion
var mess = "Hello"
mess.insert("K", at:mess.firstIndex(of: "l")!)  //only to insert character

mess.insert(contentsOf: "There", at: mess.index(before: mess.endIndex)) // to insert text

//remove
mess.remove(at: mess.index(before: mess.endIndex))

print()

for (keyM,valueM) in sbn.enumerated() {
    print(keyM,valueM)
}
