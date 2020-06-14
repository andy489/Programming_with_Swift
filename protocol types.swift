struct Person: Equatable {
    let firstName: String
    let lastName: String
    var age: Int
    var phoneNumber: String
    
    static func == (lhs: Person, rhs: Person) -> Bool{
        lhs.firstName == rhs.firstName &&
        lhs.lastName == rhs.lastName &&
        lhs.age == rhs.age &&
        lhs.phoneNumber == rhs.phoneNumber
    }
}

let p1 = Person(firstName: "Pesho", lastName: "Peshov", age: 33, phoneNumber: "xxxx")
let p2 = Person(firstName: "Pesho", lastName: "Stamatov", age: 42, phoneNumber: "yyyy")

print( p1 == p2 ? "equal" : "not equal")

// example for (*)

let amount = 1.23

protocol CurrencyLookable {
    var value: String { get }
}

extension Double: CurrencyLookable {
    var value: String { "\(self) лв."}
}

print(amount.value)

// type of protocols:
// can-do: shows what the functionality can do regexp ".*able" -> Hashable, Equatable [ == ], Cmparable [<, >], CustomPlaygroundDisplayConvertible (*) etc.
// is-a: Collection, Generator, Sequence (previous versions: .*Type, CollectionType, GeneratorType, SequenceType)
// can-be: ExpressibleBy...Literal, ExpressibleByFloatLiteral
