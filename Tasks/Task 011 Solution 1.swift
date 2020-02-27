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
