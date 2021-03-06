// github.com/andy489

//First Solution
import Foundation

var count_a_div = 0
var count_a_mod = 0

var word = readLine()!
var n = Int(readLine()!)!

for char in word {
    if char=="a" {
        count_a_div+=1
    }
}

for i in 0..<n % word.count {
    if Array(word)[i] == "a" {
        count_a_mod+=1
    }
}

print((n/word.count) * count_a_div + count_a_mod)

//Second Solution
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
