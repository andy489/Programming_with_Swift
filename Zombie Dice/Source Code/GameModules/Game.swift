import PlayersModules

public enum GameError: Error {
    case lessThanTwoPlayers
    case moreThanEightPlayers
    case invalidChoiceNumber
    case invalidInput
}

public class Game {
    public init() {
    }
    
    // play the whole game - from the start menu until the end
    public func play() {
        do {
            try startMenu()
        } catch GameError.invalidChoiceNumber {
            print("The entered option is incorrect: try typing '1' or '2'!")
        } catch GameError.lessThanTwoPlayers {
            print("The game must be played by more than 1 player!")
        } catch GameError.moreThanEightPlayers {
            print("The game must be played by less than 9 players!")
        } catch GameError.invalidInput {
            print("Invalid input was given!")
        } catch PlayerError.invalidInput {
            print("Invalid input was given while playing the game!")
        } catch {
        }
    }
    
    // display start menu and handle user input and then call playGame in order to start the game
    private func startMenu() throws {
        print("This is an implementation of the game Zombie Dice created by Svetlin Popivanov")
        print("1. Start Game")
        print("2. I want to know how to play the game")
        print("Select option: ", terminator: "")
        
        guard let choice = readLine() else {
            throw GameError.invalidInput
        }
        
        if choice != "1" && choice != "2" {
            throw GameError.invalidChoiceNumber
        }
        
        if choice == "2" {
            print("==================================================================")
            print("In short, here are the basic concepts of the game:")
            print("1. You start with 13 dice and you roll 3 of them each turn until you have 3 or more shotguns or are out of dice (each round for a player consists of turns where he picks 3 dice or less if he has less than 3 dice left);")
            print("2. Your dice are green, yellow and red with the count of each of them being the following: 6, 4 and 3;")
            print("3. The green dice has 3 brains, 1 shotgun and 2 runners as sides, the yellow - 2 of each and the red - 1 brain, 3 shotguns and 2 runners;")
            print("4. When you score at least 13 brains (or the highest brain score), you win. When you score 3 shotguns in one round (this count resets each round) you lose your accumulated brain score from this round. When you roll a runner, the dice is returned and you can roll it again on the next turn;")
            print("5. In order to move on to the next turn, you have to type Yes/y/yes or any other string literal. If you wish to stop to the current turn and finish your round you have to type No/N/n/no;")
            print("6. After the end of each player's round a table of the current statistics about the game will be shown in order for you to correctly plan your next moves!")
            print("Enjoy playing the game!")
            print("press enter when you are ready: ", terminator: "")
            
            guard let _ = readLine() else {
                throw GameError.invalidInput
            }
        }
        
        do {
            try playGame()
        } catch GameError.lessThanTwoPlayers {
            throw GameError.lessThanTwoPlayers
        } catch GameError.moreThanEightPlayers {
            throw GameError.moreThanEightPlayers
        } catch GameError.invalidInput {
            throw GameError.invalidInput
        } catch PlayerError.invalidInput {
            throw PlayerError.invalidInput
        }
    }
    
    private func playGame() throws {
        print("Enter the names of the players each space-separated:")
        
        guard var players = readLine()?.components(separatedBy: " ") else {
            throw GameError.invalidInput
        }
        
        if players.count < 2 {
            throw GameError.lessThanTwoPlayers
        }
        else if players.count > 8 {
            throw GameError.moreThanEightPlayers
        }
        
        players = players.filter({ if $0.isEmpty { return false }; return true })
        
        var convertedPlayers = [Player]()
        for player in players {
            convertedPlayers.append(.init(name: player))
        }
        let game = GameHandler(players: convertedPlayers)
        print("==================================================================")
        
        do {
            try game.playGame()
        } catch PlayerError.invalidInput {
            throw PlayerError.invalidInput
        }
        
        print("Thanks for playing the game!")
    }
}
