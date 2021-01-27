//MARK: - 1 task -

var array = [[45, 12], [10, 19], [191, 3], [41, 81]]
print("First input: \(array)")

func sortingArray(arr: inout [[Int]]) -> [[Int]]{
    for index in arr.indices{
        arr[index].sort{ $0 < $1 }
    }
    arr.sort { (arr1: [Int], arr2: [Int]) -> Bool in
        if let i = arr1.first, let j = arr2.first{
            return i > j
        }
        return false
    }
    
    return arr
}

print("First output: \(sortingArray(arr: &array))")
print("")

//MARK: - 2 task -

var string = "Hello world"
print("Second input: \(string)")

func countLetters (string: String) -> [Character : Int]{
    let filtered = string.filter { !" ".contains($0) }
    var dict = Dictionary(grouping: filtered, by: { Character(extendedGraphemeClusterLiteral: $0) }).mapValues { _ in 0 }
    var letterCount = Int()
    for i in filtered{
        letterCount = string.filter { $0 == i }.count
        dict[i] = letterCount
    }
    return dict
}
print("Second output: \(countLetters(string: string))")
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
