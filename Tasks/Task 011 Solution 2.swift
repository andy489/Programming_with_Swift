import Foundation

var div_cnt = 0, rem_cnt = 0

var word = readLine()!
var n = Int(readLine()!)!

let rem = n % word.count

for (i,c) in word.enumerated() {
    if i == rem {
        rem_cnt = div_cnt
    }
    if c == "a" {
        div_cnt+=1
    }
}

let res = div_cnt * (n/word.count) + rem_cnt

print(res)
