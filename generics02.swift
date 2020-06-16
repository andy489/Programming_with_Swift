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
