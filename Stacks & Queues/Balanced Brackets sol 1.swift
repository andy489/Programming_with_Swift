// github.com/andy489

public func arePair (left: Character, right: Character) -> Bool{
    return left == "(" && right == ")" || 
    left == "[" && right == "]" || 
    left == "{" && right == "}"
} 

public func isBalanced (testStr: String) -> Bool {
    var stack = [Character]()
    for bracket in testStr{
        switch bracket {
        case "{", "(", "[": stack.append(bracket)
        case "}", "]", ")":
            if stack.isEmpty || arePair(left: stack.last!, right: bracket) == false{
                return false
            } else {
                stack.removeLast()
            }
        default:
            fatalError("Unknown bracket")
        }
    }
    return stack.isEmpty
}

let n = Int(readLine()!)!

for _ in 0..<n {
    let testStr = String(readLine()!)
    let answer = isBalanced(testStr: testStr) ? "YES": "NO"
    print(answer)
}
