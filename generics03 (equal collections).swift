protocol CollectionEquatable {
    associatedtype Element
    var count: Int { get }
    subscript (i: Int) -> Element { get }
}

class Queue<T>: CollectionEquatable {
    var items: [T]
    var _cnt: Int
    
    init() {
        items = []
        _cnt = 0
    }
    
    func insert(item: T) {
        items.append(item)
        _cnt += 1
    }

    func get() -> T? {
        if items.count > 0 {
            _cnt -= 1
            return items.removeFirst()
        }
        return nil
    }
    
    subscript(i: Int) -> T {
        items[i]
    }
    
    var count: Int {
        return _cnt
    }
    
    func empty() -> Bool {
        return _cnt == 0
    }
}

extension Array: CollectionEquatable {}

/*
var q = Queue<Double>()
print("count: \(q._cnt)")

q.insert(item: 3.58)
q.insert(item: 4.21)
q.insert(item: 8.89)

print("count: \(q._cnt)")

while !q.empty() {
    print(q.get()!)
}

print("count: \(q._cnt)")
*/

/*
    да се напише шаблонна функция, която сравнява две колекции по следните правила:
    - двете колекции имплементират протокола CollectionEquatable
    - двете колекции имат еднакъв брой елементи
    - всеки елемент да е еднакъв на съответния елемент от друга колекция
    Array [1, 2, 3]
    Queue [1, 2, 3]
    Set   [1, 2, 3]
    etc.
 */

func isEqual<T: CollectionEquatable, U: CollectionEquatable>(first: T, second: U) -> Bool where T.Element == U.Element, U.Element: Equatable {
    if first.count == second.count {
        let c = first.count
        for i in 1..<c {
            if first[i] != second[i] {
                return false
            }
        }
        return true
    }
    return false
}

var arr = [4, 8, 9]
var queue = Queue<Int>()
queue.insert(item: 4)
queue.insert(item: 8)
queue.insert(item: 9)

print(isEqual(first: arr, second: queue))
