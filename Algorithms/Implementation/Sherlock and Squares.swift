// github.com/andy489

//First Solution (Fast)
import Foundation

func squares(a: Int, b: Int) -> Int {
    return Int(floor(sqrt(Double(b)))-ceil(sqrt(Double(a))))+1
}

let q = Int(readLine()!)!

for _ in 0..<q {
    let se = readLine()!
             .split(separator:" ")
             .map{Int(String($0))!}
    let (s,e) = (se[0],se[1])
       
    print(squares(a:s,b:e))
}

// Second Solution (Brute Force)

import Foundation

func squares(a: Int, b: Int) -> Int {
    var c = 0
    var s = Int(ceil(sqrt(Double(a))))
    for i in s...b{
        if i*i<=b {
            c+=1;
        }
        else{
            break
        }
    }
    return c
}

let q = Int(readLine()!)!

for _ in 0..<q {
    let se = readLine()!
             .split(separator:" ")
             .map{Int(String($0))!}
    let (s,e) = (se[0],se[1])
       
    print(squares(a:s,b:e))
}
