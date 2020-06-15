var f:(Int, Int) -> Int

 f = {(x,y) in x * y}

var g = f

g = { $0 * $1 }

//print("f: \(f(4, 2))")
//print("g: \(g(2, 4))")

func createGen(start: Int, modify: @escaping (Int)->Int) -> ()->(Int) {
    var myStart /*:Int*/= start
    
    return {
        myStart = modify(myStart)
        return myStart
    }
}

var next = createGen(start: 0) {
    $0 + 2
}

//for (i, _) in [Int](1...5).enumerated() {
//    print("index \(i): \(next())")
//}

var handlers:[()->Void] = []

func escapingClosure(f: @escaping ()->Void) {
    print("escapingClosure - start")
       handlers.append(f)
    print("escapingClosure - end")
}

handlers.append {
    print("test 1")
}

escapingClosure {
    print("test 2")
}

for f in handlers {
    f()
}
