// github.com/andy489

import Foundation

var n = Int(readLine()!)!
var arr = Array(readLine()!
                .split(separator:" ")
                .map{Int($0)!})

var count = Array<Int>(repeating: 0, count: 101)

for element in arr{
    count[element]+=1;
}

var max=0

for element in count{
    if element>max{
        max=element
    }
}

print(n-max)
