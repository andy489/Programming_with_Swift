// github.com/andy489

// Sorting
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

// Counting
import Foundation

var n = Int(readLine()!)!

var arr = Array(readLine()!
          .split(separator:" ")
          .map{Int($0)!})

var count=Array<Int>(repeating:0,count:1001)

for i in 0..<n{
    count[arr[i]]+=1
}

print(n)
for i in 0...1000{
    if count[i]>0{
        if n-count[i]>0{
            print(n-count[i])
            n-=count[i]
        }
    }
}
