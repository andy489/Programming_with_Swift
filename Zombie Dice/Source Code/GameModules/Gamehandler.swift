import TableModule
import PlayersModules

public class GameHandler {
    private let players: Players
    private let table: Table
    private var winners: Players = Players()
    
    public init(players: [Player]) {
        self.players = Players(players)
        self.table = Table(players: self.players)
    }
    
    public func playGame() throws {
        while winners.players.count == 0 {
            for player in players {
                print("Current score:")
                table.printTable()
                
                do {
                    try player.playRound()
                } catch PlayerError.invalidInput {
                    throw PlayerError.invalidInput
                }
                
                if player.getBrainScore() >= 13 {
                    winners.addPlayer(player)
                }
                table.updatePlayerInfo(player)
            }
        }
        
        if winners.players.count == 1 {
            print("The winner is: \(winners.players.first!.getName()) with score \(winners.players.first!.getBrainScore())")
        }
        else {
            print("The winners are: ")
            for player in winners.players {
                print("\(player.getName()) with score \(player.getBrainScore())")
            }
        }
    }
}
