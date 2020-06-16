class Car{
    var model: String
    var price: Double
    var owner: Human?
    
    init(){
        model = ""
        price = 0.0
    }
    
    init(m: String, p: Double){
        print("Creating instance Car with \(#function).")
        self.model = m
        self.price = p
    }
    
    func display() -> Void{
        if owner != nil {
            print("Car model: \(self.model), price: \(self.price.round2) is \(self.owner!.name)'s property")
        } else {
            print("Car model: \(self.model) with price: \(self.price.round2) has no owner")
        }
    }
    
    deinit{
        print("\(#function) for Car \(self.model).")
    }
}

extension Double {
    var round2: Double { (self * 100.0).rounded()/100 }
}

extension Double {
    var fmtEUR: String { "\(self.round2) EUR" }
}

class Human {
    var name: String
    weak var vehicle: Car?

    init(){
        name = ""
    }

    init(n: String, v: Car){
        print("Creating instance Human with \(#function).")
        self.name = n
        self.vehicle = v
    }

    func display() -> Void {
        if self.vehicle != nil {
            print("Human named \(self.name) has car \(self.vehicle!.model) which price is \(self.vehicle!.price).")
        } else {
            print("Human named \(self.name) does not own a car.")
        }
    }

    deinit{
        print("\(#function) for Human named \(self.name).")
    }
}

var bmw: Car? = Car(m: "BMW 4", p: 220_300)
bmw?.display()

var pesho: Human? = Human(n: "Pesho", v: bmw!)
pesho?.display()

bmw?.owner = pesho // making reference cycle
bmw?.display()

print("--------------------------------------------------------")

pesho = nil
bmw = nil
