// github.com/andy489

import Foundation

let n=Int(readLine()!)!
var a=readLine()!
      .components(separatedBy:" ")
      .map{Int($0)!}

var p=Array<Int>(repeating: 0,count: n+1)
    
for i in 1...n{
    let x=a[i-1]
    p[x]=i
}

for i in 1...n{
    print(p[p[i]])
}
