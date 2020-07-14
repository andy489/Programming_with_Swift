// github.com/andy489

import Foundation // for trimmingCharacters (which is just an extra)

func largestRectangle(h: [Int]) -> Int {
  var stack = [Int]()
  var result = 0
  for i in 0...(h.count) {
    while let last = stack.last, i == h.count || h[last] >= h[i] {
        stack.popLast()
        result = max(result, h[last] * ( stack.isEmpty ? i : i - stack.last!-1))
    }
    stack.append(i)
  }
  return result
}

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

guard let hTemp = readLine() else { fatalError("Bad input") }
let h: [Int] = hTemp.split(separator: " ").map {
    if let hItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
        return hItem
    } else { fatalError("Bad input") }
}

guard h.count == n else { fatalError("Bad input") }

print(largestRectangle(h: h))
