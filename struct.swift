// github.com/andy489

struct Car {
    var brand: String
    var model: String
    var price: Double
    var year: UInt16
    var isAvailable: Bool
    var shortDescription: String?
    
    init(){
        self.brand = "none"
        self.model = "none"
        self.price = 0.0
        self.year = 0
        self.isAvailable = false
        self.shortDescription = nil
    }
    
    init(b: String, m: String, p: Double, y: UInt16, a: Bool){
             self.brand = b
             self.model = m
             self.price = p
             self.year = y
             self.isAvailable = a
    }
    
    init(b: String, m: String, p: Double, y: UInt16, a: Bool, s: String){
        self.brand = b
        self.model = m
        self.price = p
        self.year = y
        self.isAvailable = a
        self.shortDescription = s
    }
    
    func printMe(){
        if shortDescription != nil {
            print("Brand: \(self.brand)\nModel: \(self.model)\nPrice: \(price.round2) EUR\nYear: \(year)\nAvailable: \(isAvailable ? "yes":"no")\nDescrption: \(shortDescription!)\n------------------")
        } else {
            print("Brand: \(self.brand)\nModel: \(self.model)\nPrice: \(price.round2) EUR\nYear: \(year)\nAvailable: \(isAvailable ? "yes":"no")\n------------------")
        }
    }
    
    func printMe(currency: String){
        var newPrice = 0.0
        switch currency {
        case "BGN":
            newPrice = self.price * 1.955
        case "USD":
            newPrice = self.price * 1.1256
        default:
            newPrice = self.price // default is EUR
        }
        
        //newPrice = (100 * newPrice).rounded()/100
        
        if shortDescription != nil {
            print("Brand: \(self.brand)\nModel: \(self.model)\nPrice: \(newPrice.round2) \(currency)\nYear: \(year)\nAvailable: \(isAvailable ? "yes":"no")\nDescrption: \(shortDescription!)\n------------------")
        } else {
            print("Brand: \(self.brand)\nModel: \(self.model)\nPrice: \(newPrice.round2) \(currency)\nYear: \(year)\nAvailable: \(isAvailable ? "yes":"no")\n------------------")
        }
    }
    
    subscript (index: Int) -> Any{
        get {
            switch index{
            case 0:
                return self.brand
            case 1:
                return self.model
            case 2:
                return self.price
            case 3:
                return self.year
            case 4:
                return self.isAvailable ? "yes" : "no"
            case 5:
                return self.shortDescription != nil ? self.shortDescription! : "no additional description"
            default :
                return "Invalid index"
            }
        }
        set(newInfo){
            switch index {
            case 2:
                if let a = newInfo as? Double {
                    self.price = a
                } else if let a = newInfo as? Int {
                    self.price = Double(a)
                } else {
                    print("Invalid price. Price must be Double. Failed to change.")
                }
            case 5:
                self.shortDescription = "\(newInfo)"
            default:
                print("you can change only \"price\" or \"additional info\"")
            }
        }
    }
}

extension Car{
    var europeanEmissionStandard: String{
        get{
            if self.year < 2001 {
                return "EURO 2"
            } else if self.year < 2003 {
                return "EURO 3"
            } else if self.year < 2008 {
                return "EURO 4"
            } else if self.year < 2016 {
                return "EURO 5"
            } else {
                return "EURO 6"
            }
        }
    }
}

extension Double{
    var round2: Double{
        get{
            return (self * 100).rounded()/100
        }
    }
}

var c1 = Car(b: "Ferrari", m: "California T", p: 223_348, y: 2_016, a: true)
c1.shortDescription = "very fast"

var c2 = Car(b: "Jeep", m: "Grand Charokee", p: 113_735, y: 2_018, a: true)
var c3 = Car(b: "Lexus", m: "LC 500h", p: 118_995, y: 2_017, a: false, s: "engine type is hibrid")
var c4 = Car()

c1.printMe(currency: "BGN")
c3.printMe(currency: "USD")
c4.printMe()

c2[5] = "SUV"
print("\(c2[0]) \(c2[1]) - \(c2[5]). European emission standard: \(c1.europeanEmissionStandard)")

c2[2]=88_990

var c2_copy = c2
c2_copy.printMe(currency: "BGN")
