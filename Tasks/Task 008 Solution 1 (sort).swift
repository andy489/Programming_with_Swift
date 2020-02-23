import Foundation

let n = Int(readLine()!)!

var arr = Array(readLine()!
          .split(separator:" ")
          .map{Int($0)!})

arr.sort()

print(n)
for i in 0..<n-1{
    if arr[i] != arr[i+1] {
        print(n-(i+1))
    }
}
