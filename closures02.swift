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

var reversedNames = names.sorted(by: >)
print(reversedNames)




