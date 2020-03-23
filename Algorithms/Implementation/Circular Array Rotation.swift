// github.com/andy489

import Foundation

let input = readLine()!
           .components(separatedBy:" ")
           .map{Int($0)!}
var n=input[0]
var r=input[1]
var q=input[2]

r=r%n

let arr = readLine()!
        .components(separatedBy:" ")
        .map{Int($0)!}

for _ in 1...q{
    let indx=Int(readLine()!)!
    print(arr[(n-r+indx)%n])
}
