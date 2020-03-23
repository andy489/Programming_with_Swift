// github.com/andy489

import Foundation

func isKaprekar(number: Int) -> Bool {
    var digits = 0, newNumber = number
    while newNumber > 0 {
        digits += 1
        newNumber /= 10
    }
    
    let square = number * number
    let multiplier = Int(pow(10.0, Double(digits)))
    let rightNumber = square % multiplier
    let leftNumber = square / multiplier
    
    return leftNumber + rightNumber == number
}

let p = Int(readLine()!)!
let q = Int(readLine()!)!

var kaperkarNumbers = [Int]()
for i in p ... q {
    if isKaprekar(number: i) {
        kaperkarNumbers.append(i)
    }
}

if kaperkarNumbers.count > 0 {
    print(kaperkarNumbers.map({ String($0) }).joined(separator: " "))
} else {
    print("INVALID RANGE")
}
