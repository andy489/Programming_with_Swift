class Unowned<T: AnyObject> {
    unowned var value : T
    
    init(value: T) {
        self.value = value
    }
}

enum StoneMark: Int {
    case empty = 1
    case black
    case white
}

class Node {
    private var _id: Int = 0
    private var _neighbours: [Unowned<Node>] = []
    private var _colour: StoneMark = StoneMark.empty {
        didSet {
            //
        }
    }
    
    // number of active mills this node is a member of
    private var _activeMillCount: Int = 0
    private var _isTappable: Bool = true {
        didSet {
            if(_isTappable) {
                //
            }
        }
    }
    private var _isDraggable: Bool = false {
        didSet {
            if(_isDraggable) {
                //
            }
        }
    }
    
    var colour: StoneMark {
        get {
            return _colour
        }
    }
    
    var emptyNeighbours: [Unowned<Node>] {
        get {
            
            return _neighbours.filter { node in node.value.colour == .none }
        }
    }
    
    var blocked: Bool {
        get {
            return emptyNeighbours.count == 0
        }
    }
    
    var neighbours: [Unowned<Node>] {
        get {
            return _neighbours
        } set {
            _neighbours = newValue
        }
    }
    
    var inActiveMill: Bool {
        get {
            return _activeMillCount > 0
        }
    }
    
    func incrementActiveMillCount() {
        _activeMillCount = _activeMillCount + 1;
    }
    
    func decrementActiveMillCount() {
        _activeMillCount = _activeMillCount - 1;
    }
    
    var id: Int {
        get {
            return _id
        }
    }
    
    var hasEmptyNeighbours: Bool {
        get {
            return emptyNeighbours.count > 0
        }
    }
    
    var isTappable: Bool {
        get {
            return _isTappable
        } set {
            _isTappable = newValue
        }
    }
    
    var isDraggable: Bool {
        get {
            return _isDraggable
        } set {
            _isDraggable = newValue
        }
    }
    
    func disable() {
        _isTappable = false
        _isDraggable = false
        //
    }
    
    func reset() {
        _colour = StoneMark.empty
        _isTappable = true
        _isDraggable = false
        _activeMillCount = 0
    }
    
    func setColour(newColour: StoneMark) -> Bool {
        var millFormedResult: Bool = false
        //
        _colour = newColour
        
        return millFormedResult
    }
    
    func printColour() -> String {
        if(_colour == .none) {
            return "O"
        } else if (_colour == .black) {
            return "b"
        } else {
            return "w"
        }
    }
    
    func copyValues(from otherNode: Node) {
        _colour = otherNode._colour
        _activeMillCount = otherNode._activeMillCount
        _isTappable = otherNode._isTappable
        _isDraggable = otherNode._isDraggable
    }
    
}

extension Node: Equatable {
    // Convenience for remove
    static func ==(lhs: Node, rhs: Node) -> Bool {
        return lhs === rhs
    }
}
