struct Movement: OptionSet {
    let rawValue: Int
    
    static let left = Movement(rawValue: 1 << 0)
    static let right = Movement(rawValue: 1 << 1)
    static let up = Movement(rawValue: 1 << 2)
    static let down = Movement(rawValue: 1 << 3)
    
    static let all = [Movement.left, .right, .up, .down]
}

class GameEngine {
    struct Position {
        var x: Int
        var y: Int
        
    }
    
    var position = Position(x: 0, y:0)
    
    func move(by value: Int, direction: Movement){
        if direction.contains(.up){
            position.y -= value
        } else if direction.contains(.down){
            position.y += value
        } else if direction.contains(.left){
            position.x -= value
        } else if direction.contains(.right){
            position.x += value
        }
        
        print("\(position.x) -> \(position.y)")
    }
}

let game = GameEngine()

game.move(by: 1, direction: [.right])
