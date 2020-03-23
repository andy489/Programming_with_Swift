// github.com/andy489

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
