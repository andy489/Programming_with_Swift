// github.com/andy489

public class StackNode {
    var value = String()
    var next: StackNode?
    var max = Int()
    
    public init(value: String) {
        self.value = value
    }
}

public class Stack {
    public typealias Node = StackNode
    var top: Node?

    func push(node: StackNode) -> Node {
        node.next = top
        top = node
        return top!
    }

    func pop() -> Node? {
        if top != nil {
            top = top!.next
        }
        return top
    }
}

public func isBalanced(line: String) -> String {
    let myStack = Stack()
    for bracket in line {
        switch bracket {
        case "{", "[", "(":
            let myStackNode = StackNode(value: String(bracket))
            myStack.push(node: myStackNode)
        case "}":
            if myStack.top == nil || myStack.top?.value != "{" {
                return "NO"
            }
            myStack.pop()
        case "]":
            if myStack.top == nil || myStack.top?.value != "[" {
                return "NO"
            }
            myStack.pop()
        case ")":
            if myStack.top == nil || myStack.top?.value != "(" {
                return "NO"
            }
            myStack.pop()
        default:
        fatalError("Undefined bracket")
        }
    }
    return myStack.top === nil ? "YES" : "NO"
}

let n = Int(readLine()!)!

for _ in 0..<n {
    let line = readLine()!
    print(isBalanced(line: line))
}
