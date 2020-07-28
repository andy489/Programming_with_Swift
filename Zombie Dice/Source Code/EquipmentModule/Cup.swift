// cup contains the 13 dice for the game
public class Cup {
    private var dice: [Dice]
    private var currentDice: [Dice]

    public init() {
        dice = [Dice]()
        
        for i in 1...13 {
            if (i < 7) {
                dice.append(GreenDice.init())
            }
            else if (i < 11) {
                dice.append(YellowDice.init())
            }
            else {
                dice.append(RedDice.init())
            }
        }
        
        currentDice = dice
    }
    
    public func pickDice() -> [Dice]? {
        if currentDice.count == 0 {
            return nil
        }
        
        var result = [Dice]()
        for _ in 0..<min(3, currentDice.count) {
            currentDice.shuffle()
            result.append(currentDice.removeFirst())
        }
        
        return result
    }
    
    public func addRunner(runner: Dice) {
        currentDice.append(runner)
    }
    
    // refill the cup with dice again
    public func reset() {
        currentDice = dice
    }
    
    public func isEmpty() -> Bool {
        return currentDice.isEmpty
    }
    
    public func currentDiceCount() -> Int {
        return currentDice.count
    }
}
