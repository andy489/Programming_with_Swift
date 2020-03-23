// github.com/andy489

import Foundation

let n = Int(readLine()!)!
let a = readLine()!.components(separatedBy:" ").map{Int($0)!}

var minDistance = 100001
var m = [Int:Int]()

for i in 0..<a.count {
   let x = a[i]
   
   if i > 0 {
      if let index = m[x] {
           minDistance = min(minDistance, i - index)
      }
      if minDistance == 1 {
             break
      }
   }
   m[x] = i
}
print(minDistance != 100001 ? minDistance : -1)
