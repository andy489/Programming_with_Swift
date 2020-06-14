// protocols, extensions, enums

protocol Sellable{
    var price: Double? { get set }
    var isAvailable: Bool { get }
    
    func sell()
}

extension Sellable {
    var isAvailable: Bool { price != nil }
    
    func sell() {
        print("SOLD")
    }
}

// protocol Printable: AnyObject { // can be implementet only by class type (referenced)
// protocol Printable: Sellable {
protocol Printable {
    var description: String { get set }
    func print() -> Void
    static func doSomething() -> Void
    
    init(description: String)
}

typealias SellablePrintable = Printable & Sellable // another way to make composition

// class Machine: Printable, Sellable { // adds Sellable protocol only to class Machine
// class Machine: SellablePrintable
class Machine /*:Printable*/{
    var description: String
    var price: Double? = nil
    
    required init(description: String){
        self.description = description
    }
    
    convenience init() {
        self.init(description: "Some Machine")
    }
}

extension Machine: Printable {
    //var secondDescription: String // we cannot do this!
    
    /*
    var desc2: String {
        get {
            description + " again"
        }
    }
     */
    // shorter:
    var desc2: String { description + " again"}
    
    var desc3: String {
        get { description }
        set { description = newValue }
    }
    
    func print() -> Void {
        Swift.print("Machine: \(description)")
    }
    
    func print2() -> Void {
        Swift.print("Machine: \(desc2)")
    }
      
    static func doSomething(){
        Swift.print("does something")
    }
}

extension Machine: Sellable {
    func sell() {
        Swift.print("Machine SOLD")
    }
}

struct Text: Printable {
    var description: String
    
    func print() -> Void {
        Swift.print("Text: \(description)")
    }
    
    static func doSomething(){
        Swift.print("does something")
    }
}

let machine = Machine()
//machine.desc3 = "Car"
let text = Text(description: "Lorem Ipsum")

//machine.print()
text.print()

let printable: Printable = machine
printable.print()

machine.sell()
