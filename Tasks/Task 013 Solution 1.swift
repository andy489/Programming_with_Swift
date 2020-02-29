import Foundation

var nm = readLine()!
         .components(separatedBy: " ")
         .map{Int($0)!}

var (n,m) = (nm[0],nm[1])

var ppl = [[Int]]() // ppl = people/contestants

for _ in 0..<n {
    ppl.append(readLine()!
               .map{Int(String($0))!})
}

func sumTopics(a:[Int], b:[Int], m: Int) -> Int {
    var sum = 0
    for i in 0..<m {
        if a[i] | b[i] == 1 {
            sum += 1
        }
    }
    return sum
}

var maxTopics = 0, teams = 0

for i in 0..<n-1 {
    for j in i+1..<n {
        let topics = sumTopics(a: ppl[i], b: ppl[j], m: m)
        if topics > maxTopics {
            maxTopics = topics
            teams = 1
        }
        else if topics == maxTopics {
            teams += 1
        }
    }
}

print("\(maxTopics)\n\(teams)")
