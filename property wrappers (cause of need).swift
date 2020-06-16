// PROPERTY WRAPPERS

@discardableResult
@available(iOS, unavailable, message: "unavailable for iOS!" )
func doSomething() -> String {
    return "foo bar"
}
doSomething()

class Superclass {
    var percent: Double {
        didSet {
            percent = min(100, max(0, percent))
        }
    }
    
    var amount: Double
    
    private func clampPercent() {
        percent = min(100, max(0, percent))
    }
    
    init(){
        percent = 0.0
        amount = 0.0
    }
    
    init(percent: Double, amount: Double){
        self.percent = percent
        self.amount = amount
        clampPercent()
    }
    
    func setPercent(_ percent: Double, _ amount: Double){
        self.percent = percent
        self.amount = amount
    }
}

class Child: Superclass {
    @available(*, unavailable, renamed: "setPercent(amount:totalAmount:)")
    final override func setPercent(_ percent: Double,_ amount: Double) { }
    
    func setPercent(amount: Double, totalAmount: Double) {
        guard totalAmount > 0 else { return }
        
        super.setPercent(amount / totalAmount * 100, amount)
    }
}

let parent = Superclass()
let child = Child()

parent.setPercent(0, 0)
child.setPercent(amount: 0, totalAmount: 0)
child.setPercent(amount: 0.5, totalAmount: 1)

