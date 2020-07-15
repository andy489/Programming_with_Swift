// github.com/andy489

func sherlockAndAnagrams(s: String) -> Int {
    var dict = [Set<String>: Int]()
    let charArray = s.map{ Character($0.description) }
    
    for i in 0..<s.count {
        for j in i+1..<s.count + 1 {
            let str = charArray[i..<j].sorted{$0<$1}.description
            let subSet: Set<String> = [str]
            if let count = dict[subSet] {
                dict[subSet] = count + 1
            } else {
                dict[subSet] = 1
            }
        }
    }
    let count = dict.reduce(0) { (lhs, rhs) in
        if rhs.value > 1{
            return lhs + (rhs.value * (rhs.value - 1) / 2)
        } else {
            return lhs
        }
    }
    return count
}

guard let q = Int(readLine()!)
else{ fatalError("Bad input")}

for _ in 1...q {
    guard let s = readLine() else { fatalError("Bad input") }
    let result = sherlockAndAnagrams(s: s)
    
    print(result)
}
