// github.com/andy489

import Foundation

// Complete the howManyGames function below.
func howManyGames(p: Int, d: Int, m: Int, s: Int) -> Int {
    // Return the number of games you can buy
    return s < p ? 0 : howManyGames(p:max(p-d,m),d:d,m:m,s:s-p)+1;
}

guard let pdmsTemp = readLine() else { fatalError("Bad input") }
let pdms = pdmsTemp.split(separator: " ").map{ String($0) }

guard let p = Int(pdms[0].trimmingCharacters(in: .whitespacesAndNewlines))
else { fatalError("Bad input") }

guard let d = Int(pdms[1].trimmingCharacters(in: .whitespacesAndNewlines))
else { fatalError("Bad input") }

guard let m = Int(pdms[2].trimmingCharacters(in: .whitespacesAndNewlines))
else { fatalError("Bad input") }

guard let s = Int(pdms[3].trimmingCharacters(in: .whitespacesAndNewlines))
else { fatalError("Bad input") }

let answer = howManyGames(p: p, d: d, m: m, s: s)

print(answer)
