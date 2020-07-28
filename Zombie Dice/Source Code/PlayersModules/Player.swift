import Foundation
import EquipmentModule

public enum PlayerError: Error {
    case invalidInput
}

public class Player: Comparable {
    private var brainScore: Int
    private var lastBrainScore: Int
    private var shotgunScore: Int
    private let name: String
    private static var uniqueId: Int = 1
    private var id: Int
    private var cup: Cup
    
    public init(name: String) {
        self.name = name
        self.brainScore = 0
        self.shotgunScore = 0
        self.id = Player.uniqueId
        Player.uniqueId += 1
        self.cup = Cup()
        self.lastBrainScore = 0
    }
    
    // define this in order to comply with Comparable protocol
    public static func < (lhs: Player, rhs: Player) -> Bool {
        return lhs.id < rhs.id
    }
    
    // this is also needed in order for the class to comply with Comparable protocol
    public static func == (lhs: Player, rhs: Player) -> Bool {
        return lhs.id == rhs.id
    }
    
    public func getName() -> String {
        return name
    }
    
    public func getBrainScore() -> Int {
        return brainScore
    }
    
    public func setBrainScore(newBrainScore: Int) {
            brainScore = newBrainScore
    }
    
    func playOneTurn() {
        guard let currentDice = cup.pickDice() else {
            return
        }
        
        print("==================================================================")
        print("Picked dice: ", terminator: " ")
        var hand = [String]()
        for dice in currentDice {
            if dice is GreenDice {
                print("🟩", terminator: " ")
            }
            if dice is RedDice {
                print("🟥", terminator: " ")
            }
            if dice is YellowDice {
                print("🟨", terminator: " ")
            }
            hand.append(dice.roll())
        }
        
        var brainCnt = 0
        var shotgunCnt = 0
        var cnt = 0
        print()
        print("Result: ", terminator: " ")
        for roll in hand {
            if roll == "👣" {
                cup.addRunner(runner: currentDice[cnt])
            }
            else if roll == "🧠" {
                brainCnt += 1
            }
            else if roll == "💥" {
                shotgunCnt += 1
            }
            print("\(roll)", terminator: " ")
            cnt += 1
        }
        print()
        print("==================================================================")
        
        brainScore += brainCnt
        shotgunScore += shotgunCnt
    }
    
    public func playRound() throws {
        print("It's player \(name)'s turn")
        var input = ""
        lastBrainScore = brainScore
        while (input != "No" && input != "n" && input != "no" && input != "N" && !cup.isEmpty())
        {
            playOneTurn()
            if shotgunScore >= 3 {
                print("Player \(name) has lost his/her round because he has \(shotgunScore) shotguns!")
                print("==================================================================")
                cup.reset()
                shotgunScore = 0
                brainScore = lastBrainScore
                return
            }
            print("Player \(name)'s current score: brains: \(brainScore), shotguns: \(shotgunScore), dice left: \(cup.currentDiceCount()).\nDo you wish to proceed? [Yes/No]")
            guard let answer = readLine() else {
                throw PlayerError.invalidInput
            }
            input = answer
        }
        shotgunScore = 0
        cup.reset()
        print("Player \(name)'s brain score after this round: \(brainScore).")
        print("==================================================================")
    }
}
