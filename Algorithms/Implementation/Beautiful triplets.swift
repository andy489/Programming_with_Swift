// github.com/andy489

import Foundation
let maxn = 200001

var nd = readLine()!
         .components(separatedBy: " ")
         .map{Int($0)!}

var (n,d) = (nd[0],nd[1])

var counting = Array<Int>(repeating: 0, count: maxn)

var a=readLine()!
      .components(separatedBy:" ")
      .map{Int($0)!}

for x in a {
    counting[x]+=1
}

var count = 0

for x in a {
    if(x-d>=0){
        count += counting[x-d] * counting[x+d]
    }
}

print(count)
