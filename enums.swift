// enums

enum Movement: Int{
    case left = 0
    case right = 1
    case up = 42
    case down = 3
}

let movement = Movement.up

switch movement {
case .left: // short for: Movement.left
    print("left")
case .right:
    print("right")
case .up:
    print("up")
default:
    print("down")
}

switch  movement{
case .left:
    print(movement.rawValue)
case .right:
    print(movement.rawValue)
case .up:
    print(movement.rawValue)
case .down:
    print(movement.rawValue)
}

enum House: String {
    case baratheon = "Ours is the fury"
    case tyrell = "Growing"
}

let house = House(rawValue: "") // nil, because dose not exist in enum House
print(House.baratheon.rawValue)

//earth = 3
enum Planet: Int {
    case mercury = 1
    case venus
    case earth
}

enum CompasDirection: String {
    case north, south, west, east
}

enum MathConstants: Float {
    case pi = 3.141592
    case e = 2.71828
}

enum Weekdays {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
    
    static let workDays = [Weekdays.monday, .tuesday, .wednesday, . thursday, .friday]
    
    static func random() -> Weekdays? {
        [Weekdays.monday, .tuesday, .wednesday, . thursday, .friday, .saturday, .sunday].randomElement()
    }
}

let day = Weekdays.monday
switch day {
case _ where Weekdays.workDays.contains(day):
    print(":(")
default:
    break
}

print(Weekdays.random()!)

enum Trade: String{
    case buy
    case sell
}

func executeTrade(_ trade: Trade, _ stock: String, _ amount: Double) {
    print("\(trade.rawValue) \(amount) of \(stock)")
}

executeTrade(.buy, "AAPL", 1)

enum Trade2 {
    case buy(stock: String, amount: Double)
    case sell(stock: String, amount: Double)
}
let buy = Trade2.buy(stock: "AAPL", amount: 2)

func executeTrade2(_ trade: Trade2){
    switch trade {
    case let .buy(stock, amount):
        print("buying \(amount) of \(stock)")
    case .sell(let stock, let amount):
        print("selling \(amount) of \(stock)")
    }
}

executeTrade2(buy)
