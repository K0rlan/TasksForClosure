//MARK: - 1 task -

var array = [[45, 12], [10, 19], [191, 3], [41, 81]]
print("First input: \(array)")

func sortingArray(arr: inout [[Int]],  f: (Int, Int) -> Bool) -> [[Int]]{
    for index in 0...arr.count-1 {
        if f(arr[index][0], arr[index][1]){
            arr[index].swapAt(0, 1)
        }
    }
    arr.sort { $0.first! > $1.first! }
//    or
//   arr.sort { $0.[0] > $1.[0]] }
    return arr
}

print("First output: \(sortingArray(arr: &array) { $0 > $1 })")
print("")

//MARK: - 2 task -

var string = "Hello world"
print("Second input: \(string)")

func countLetters (string: String, f: (Character, [Character : Int]) -> Bool) -> [Character : Int]{
    var dict = [Character : Int]()
    let filtered = String(string.filter { !" ".contains($0) })
    let array = Array(filtered)
    
    for item in filtered {
        dict[item] = 0
    }
    for item in array {
        if f(item, dict){
            dict[item]! += 1
        }
    }
    return dict
}

print("Second output: \(countLetters(string: string) { $1.keys.contains($0) })")
print("")

//MARK: - 3 task -

var str: String = "Hello world! Today is a great day for coding!"
print("Third input: \(str)")

func filterString(s: String) -> [String]{
    let array = s.split(separator: " ")
    var arr = [String]()
    
    for item in array {
        let koko = item.filter{ $0.isUppercase }
        if !koko.isEmpty{
            arr.append(String(item))
        }
    }
    return arr
}

print("Third output: \(filterString(s: str))")
