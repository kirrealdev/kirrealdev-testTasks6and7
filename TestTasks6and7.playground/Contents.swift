import UIKit

// task #6
struct Data {
    let number: Int
    let name: String
    
    init(number: Int, name: String) {
        self.number = number
        self.name = name
    }
}

var arrayOfData: [Data] = [
    Data(number: 5, name: "z"),
    Data(number: 0, name: "q"),
    Data(number: 1, name: "y"),
    Data(number: 3, name: "m"),
    Data(number: 1, name: "k"),
    Data(number: 2, name: "j"),
    Data(number: 1, name: "a")
]

arrayOfData.sort { $0.number != $1.number ? $0.number < $1.number : $0.name < $1.name }

//task #7
struct arrayWithAnyTypes {
    var arr: [Any]
    
    init(_ arr: [Any]) {
        self.arr = arr
    }
    mutating func append(_ newElement: Any) {
        arr.append(newElement)
    }
    mutating func insert(_ newElement: Any, at i: Int) {
        arr.insert(newElement, at: i)
    }
    mutating func remove(at index: Int) -> Any {
        return arr.remove(at: index)
    }
    
    
}

var array = arrayWithAnyTypes(["Str", 7, 4.5, false])






