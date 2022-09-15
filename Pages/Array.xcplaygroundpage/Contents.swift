//creating array
var myArray:[Int] = []

myArray.append(1) // 1 is added to array

myArray = [] //empty again

myArray.append(12)

//repeating array
var repeatAr = Array(repeating: 1, count: 3)

//combining array
var addAr = myArray + repeatAr //both array must be same type

//creating array with array literal
var shopList: [String] = ["Egg", "Milk"]

//counting
shopList.count

//compound
shopList += ["powder", "cheese"] //better than append when there are multiple value

//insertion
shopList.insert("apple", at: 1) //append will add the data at the end directly

//remove
let removedVal = shopList.remove(at: 0)

//Indexing
let firstIndex = shopList[0]

//iterating
for value in shopList {
    print(value, terminator: " ")
}

print()

//getting value with index in array
for (index,value) in shopList.enumerated() {
    print("index \(index) value \(value)")
}

var intArray: [Int] = [12, 23, 32, 10, 6, 8,9, 77, 43, 32]

let filterResult = intArray.filter{$0 % 2 == 0}
let setAndFilter = Set(filterResult)
intArray = []
intArray = Array(setAndFilter)

//short cut
let intArrayRe = Array(Set(intArray.filter{$0 % 3 == 0}))
print(intArrayRe)

//picking random element
intArray
intArray.randomElement()

//shuffle
intArray
intArray.shuffle()
