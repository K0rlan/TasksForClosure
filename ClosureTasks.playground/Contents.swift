//MARK: - 1 task -

var array = [[45, 12], [10, 19], [191, 3], [41, 81]]
print("First input: \(array)")

func sortingArray(arr: inout [[Int]]) -> [[Int]]{
    for index in arr.indices{
        arr[index].sort{ $0 < $1 }
    }
    arr.sort { $0.first! > $1.first! }
    return arr
}

print("First output: \(sortingArray(arr: &array))")
print("")

//MARK: - 2 task -

var string = "Hello world"
print("Second input: \(string)")

func countLetters (string: String, f: (Character, [Character : Int]) -> Bool) -> [Character : Int]{
    var dict = [Character : Int]()
    let filtered = Array(String(string.filter { !" ".contains($0) }))
    for item in filtered {
        dict[item] = 0
    }
    for item in filtered {
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
