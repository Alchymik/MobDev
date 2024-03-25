var friends = ["Аня", "Катя", "Марина", "Оля", "Ира"]

let sortedForward = friends.sorted { $0.count < $1.count }
print("Отсортированный массив: \(sortedForward)")

let sortedBackward = friends.sorted { $0.count > $1.count }
print("Отсортированный в обратную сторону массив: \(sortedBackward)")

var friendsDictionary = [Int: String]()

for friend in friends {
    friendsDictionary[friend.count] = friend
}

func printKeyValue(key: Int) {
    if let value = friendsDictionary[key] {
        print("Ключ: \(key), Значение: \(value)")
    } else {
        print("Нет значения для ключа \(key)")
    }
}

printKeyValue(key: 3)

func checkArraysAndPrint(array1: inout [String], array2: inout [Int]) {
    if array1.isEmpty {
        array1.append("Новое значение1")
    }
    if array2.isEmpty {
        array2.append(42)
    }
    
    print("1 массив: \(array1)")
    print("2 массив: \(array2)")
}

var emptyArray1 = [String]()
var emptyArray2 = [Int]()

checkArraysAndPrint(array1: &emptyArray1, array2: &emptyArray2)