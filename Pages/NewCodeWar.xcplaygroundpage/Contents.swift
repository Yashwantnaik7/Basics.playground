
func find_short(_ str: String) -> Int
{
 for i in str {
    print(i)
 }
  return 0
}

find_short("bitcoin take over the world maybe who knows perhaps")

func fibonacci(n: Int) {
        
        var n1 = 0
        var n2 = 1
        
        if n == 0 {
            print("Invalid")
        } else if n == 1 {
            print(n1)
        } else if n == 2 {
            print(n1, n2)
        } else {
            var array = [n1, n2]
            for _ in 2..<n {
                let n3 = n1 + n2
                array.append(n3)
                
                n1 = n2
                n2 = n3
            }
            print(array)
        }
    }

let result = fibonacci(n: 24)
print(result)
