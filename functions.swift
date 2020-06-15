func sum(a first: Int, b second: Int) -> Int {
    first + second
}

var f:(Int, Int) -> Int = sum

func swap(a: inout Int, b: inout Int) -> Void {
    let c: Int = a
    a = b
    b = c
}

// print(sum(a: 4, b: 2))

var a = 4, b = 2

 /*
print("a=\(a), b=\(b)")
swap(a: &a, b: &b)
print("a=\(a), b=\(b)")
*/

// print(f(a, b))

func printMe(i: Int) -> Void {
    print("Print Me: \(i)")
}

func printMeFancy(i: Int) -> Void {
    print("Print Me =>> \(i) <<=")
}

func smartPrint(printFunction:(Int)->()){
    let list = [1,2,3,4,5,6,7,8,9,10]
    for item in list {
        printFunction(item)
    }
}

smartPrint(printFunction: printMeFancy)
