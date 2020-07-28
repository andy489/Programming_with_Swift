public class Dice {
    var sides: [String]
    
    public init(sides: [String]) {
        self.sides = sides
    }
    
    public func roll() -> String {
        sides.shuffle()
        if let randomElement = sides.randomElement() {
            return randomElement
        }
        else {
            return ""
        }
    }
}

public final class GreenDice: Dice {
    init() {
        super.init(sides: ["🧠", "🧠", "🧠", "💥", "👣", "👣"])
    }
}

public final class RedDice: Dice {
    init() {
        super.init(sides: ["🧠", "💥", "💥", "💥", "👣", "👣"])
    }
}

public final class YellowDice: Dice {
    init() {
           super.init(sides: ["🧠", "🧠", "💥", "💥", "👣", "👣"])
    }
}
