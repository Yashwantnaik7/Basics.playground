//creating empty set
var mySet = Set<Int>()

//set with data
var dataSet:Set<String> = ["Rock", "hbds", "akdfb", "akdfa"]

//insertion
dataSet.insert("new")

//counting
dataSet.count

//checking emptyness
if mySet.isEmpty {
    print("yes set is empty")
}
else {
    print("No set is not empty")
}

//removing
let removedVal = dataSet.remove("Rock")

//contain
if dataSet.contains("akdfd") {
    print("yes")
}
else {
    print("no")
}

//iterating
for g in dataSet {
    print(g, terminator: " ")
}

//sorting
let sort = dataSet.sorted()

//operations
//intersection          ex: a.intersection(b) -> data in both set
//union                 ex: a.union(b)  -> combine both set data
//symmetricDifference   ex: a.symmetricDifference(b) -> indivial data from a and b set
//subtracting           ex: a.subtracting(b) -> data only in a set

dataSet.insert("Rock")
dataSet.insert("Rock") //doubt - how could we insert duplicate values to set.
print(dataSet) //answer - It won't through an error but duplicate value won't be added to set


