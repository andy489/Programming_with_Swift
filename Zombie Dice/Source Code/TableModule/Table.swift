import PlayersModules

public class Table {
    private var playersInfo: Players
    private var playerMaxStringCnt: Int = 0
    
    public init (players: Players) {
        playersInfo = players
        for player in players.players {
            playerMaxStringCnt = max(playerMaxStringCnt, player.getName().count)
        }
        playerMaxStringCnt = max(playerMaxStringCnt, "Player".count)
    }
    
    // update the brain score of the last to play player
    public func updatePlayerInfo(_ player: Player) {
        playersInfo.players = playersInfo.players.filter( {
            if $0 == player {
                $0.setBrainScore(newBrainScore: player.getBrainScore())
            }
            return true
        })
    }
    
    public func printTable() {
        print(String.init(repeating: "-", count: playerMaxStringCnt * 2 + 6))
        print("|", terminator: " ")
        print("\(formatString("Player"))\(formatString("Score"))")
        print(String.init(repeating: "-", count: playerMaxStringCnt * 2 + 6))
        for player in playersInfo.players {
            print("|", terminator: " ")
            print("\(formatString(player.getName()))\(formatString(String(player.getBrainScore())))")
        }
        print(String.init(repeating: "-", count: playerMaxStringCnt * 2 + 6))
    }
    
    // sugar coat the table so that the strings appear centered in the current column
    private func formatString(_ str: String) -> String {
        // this is always >= 0
        let diffInLen = playerMaxStringCnt - str.count
        var leftIntervals = diffInLen / 2
        let rightIntervals = diffInLen / 2 + 1
        if diffInLen % 2 != 0 {
            leftIntervals += 1
        }
        var newStr = ""
        for _ in 0..<leftIntervals {
            newStr.append(" ")
        }
        newStr.append(contentsOf: str)
        for _ in 0..<rightIntervals {
            newStr.append(contentsOf: " ")
        }
        newStr.append("|")
        return newStr
    }
}
