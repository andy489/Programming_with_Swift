protocol Sumable {
    static func + (left: Self, right: Self) -> Self
}

func sum<T: Sumable>(_ a: T, _ b: T) -> T {
    return a + b
}

extension Int: Sumable {
//    static func + (left: Int, right: Int) -> Int {
//        left * right
//    }
}

extension String: Sumable {

}

struct Vector1D {
    var x = 0
    var y = 0
    
    func printV() -> Void {
        print("Sum (Vector1D): [\(self.x), \(self.y)]")
    }
}

extension Vector1D: Sumable {
    static func + (left: Vector1D, right: Vector1D) -> Vector1D {
        return Vector1D(x: left.x + right.x, y: left.y + right.y)
    }
}

let vX = Vector1D(x: 4, y: 4)
let vY = Vector1D(x: 2, y: 22)
let sumV = sum(vX, vY)

/*
print("Sum (Int): \(sum(5, 5))")
print("Sum (String): \(sum("5", "5"))")
sumV.printV()
*/

protocol CollectionEquatable {
    associatedtype Element
    var count: Int { get }
    subscript (i: Int) -> Element { get }
}

extension Array: CollectionEquatable {}
