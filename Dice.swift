public enum DiceCreationError: Error, CustomStringConvertible {
    case insufficientNumberOfFaces
    case oddNumberOfFaces
    case tooManyFaces
    
    public var description: String {
        switch self {
        case .insufficientNumberOfFaces
            return "A dice should have at least 4 faces"
        case .oddNumberOfFaces:
            return "A dice should have even number of faces"
        case .TooManyFaces:
            return "A dice should have at most 120 faces"
        }
    }
}

public struct Dice<T: CustomStringConvertible> {
    public let faces: [T]
    
    public init(faces: [T]) throws{
        guard faces.count > 3 else { throw DiceCreationError.insufficientNumberOfFaces }
        guard faces.count.isMultiple(of: 2) else { throw DiceCreationError.oddNumberOfFaces}
        guard faces.count <= 120 else { throw DiceCreationError.tooManyFaces }
        
        self.faces = faces
    }
}

public extension Dice {
    func roll() -> T { return faces.shuffled()[0] }
}
