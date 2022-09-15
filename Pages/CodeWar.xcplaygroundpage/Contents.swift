import Darwin
func allNonConsecutive (_ arr: [Int]) -> [(Int, Int)] {
  var result:[(Int,Int)] = []
  var previousValue:Int = 0
  for i in 0..<arr.count {
    if(previousValue == 0) {
      previousValue = arr[i]
    }
    else if(arr[i] != previousValue+1){
      result.append((i,arr[i]))
        previousValue = arr[i]
    }else{
        previousValue = arr[i]
    }
  }
  return result
}

let results = allNonConsecutive([1,2,3,4,6,7,8,10])
print(results)


class Person {
    var firstName:String = String()
    var middleName:String? = nil
    var lastName:String = String()
    
    func personInfo() {
        print("\(firstName) \(middleName ?? "") \(lastName)")
    }
}

let objPerson = Person()
objPerson.firstName = "Yashwant"
//objPerson.middleName = "J"
objPerson.lastName = "Naik"
objPerson.personInfo()

func century(_ year: Int) -> Int {
    // your code here
  let centuryYear = year / 100
  let crossCheck = year - centuryYear*100
  if(crossCheck == 0){
    return centuryYear
  }
  return centuryYear+1
}


let result = century(1705)
print(result)

//my solution
func menFromBoys(_ arr: [Int]) -> [Int] {
  // your code here
  var menArray: [Int] = []
  var boyArray: [Int] = []
  var resultArray : [Int] = []
  for valueInt in arr {
    if valueInt%2==0 {
        if !menArray.contains(valueInt) {
            menArray.append(valueInt)
        }
    }else {
        if !boyArray.contains(valueInt) {
            boyArray.append(valueInt)
        }
    }
  }
    resultArray = menArray.sorted()+boyArray.sorted().reversed()
  return resultArray
}

let menFromBoyResult = menFromBoys([82,91,72,76,76,100,85])
print(menFromBoyResult)

//best answer
func menFromBoysA(_ arr: [Int]) -> [Int] {
    let men: [Int] = Array(Set(arr.filter{ $0 % 2 == 0 })).sorted()
    let boys: [Int] = Array(Set(arr.filter{ $0 % 2 != 0 })).sorted { $0 > $1 }
    return men + boys
}




func findDigit(_ num:Int, _ nth: Int) -> Int {
  // Go.
    var result:Int = -1
  if nth <= 0 {
    return -1
  }
    let value = String(String(num).reversed())
    for (i,v) in value.enumerated() {
        if i == nth-1 {
            result = Int(String(v))!
        }
    }
    if(result == -1) {
        return 0
    }
    return result
}

findDigit(6429, 3)
findDigit(-1234, 2)
findDigit(678998, 0)

func maps(a : Array<Int>) -> Array<Int> {
// write your code here...
  var result:[Int] = []
    for i in 0..<a.count {
    let val = a[i]*a[i]
    result.append(val)
  }
  return result
}

let doubleArray = maps(a: [1,2,3,4,5])
print(doubleArray)

func wallpaper(_ l: Double, _  w: Double,_  h: Double) -> String {
    var totalDimension:Double = l+w+h
    let extraLength:Double =   totalDimension * 0.18
     totalDimension += extraLength
    print(totalDimension)
    let numbers = ["zero":0, "one":1, "two":2, "three":3, "four":4, "five":5,
               "six":6, "seven":7, "eight":8, "nine":9, "ten":10,
               "eleven":11, "twelve":12, "thirteen":13, "fourteen":14, "fifteen":15,
               "sixteen":16, "seventeen":17, "eighteen":18, "nineteen":19, "twenty":20]
    // your code
  if (l <= 0 || w <= 0 || h <= 0 ) {
    return "zero"
  }

  for (key,value) in numbers {
     
    if value == Int(totalDimension) {
      return key
    }
  }
    return ""
}

wallpaper(6.3, 4.5, 3.29)
wallpaper(0.0, 2.9, 3.29)
wallpaper(4.0, 3.5, 3.0)


func replaceAll<T: Equatable>(array: [T], old: T, new: T) -> [T] {
//    print(array.insert(new, at: ))
    print(array)
    var newArray:[T] = []
 for (key,value) in array.enumerated() {
     if value == old {
         print(value)
         newArray.insert(new, at: key)
         print(newArray)
     } else {
         newArray.insert(value, at: key)
     }
 }
    return newArray
}

let resultIntArray = replaceAll(array: [1,2,2], old: 1, new: 2)
print(resultIntArray)

replaceAll(array: ["ooh", "la", "la"], old: "la", new: "baby")



