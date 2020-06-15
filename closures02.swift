let names = ["Chris", "Alex", "Zoey", "Barry", "Daniella"]

/*
func backward(_ s1: String, _ s2: String) -> Bool {
    s1 > s2
}
*/

/*
var reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in
    s1 > s2
})
*/

/*
var reversedNames = names.sorted(by: {s1, s2 in s1 > s2})
*/

/*
var reversedNames = names.sorted(by: {$0 > $1})
*/

/*
var reversedNames = names.sorted(by: >)
*/

/*
var reversedNames = names.sorted() { $0 > $1}
*/


var reversedNames = names.sorted {$0 > $1}
print(reversedNames)

let digitNames = [
    0: "Zero", 1: "One", 2: "Two", 3: "Three", 4: "Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]
let numbers = [16, 58, 510]

let strings = numbers.map { (number) -> String in
    var number = number
    var output = ""
    repeat {
        output = digitNames[number % 10]! + output
        number /= 10
    } while number > 0
    return output
}

print(strings)
