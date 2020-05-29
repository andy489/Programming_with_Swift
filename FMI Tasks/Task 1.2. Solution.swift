// github.com/andy489

func keratsubaPow(a: Double, n: Int)->Double {
    if n == 0 {return 1}
    else if n == 1 {return a}
    else if n & 1 == 1 {return keratsubaPow(a:a, n:n/2) * keratsubaPow(a:a,n:n/2) * a}
    else {return keratsubaPow(a:a,n:n/2) * keratsubaPow(a:a,n:n/2)}
}

precedencegroup PowerPrecedence { higherThan: MultiplicationPrecedence }
infix operator ^^ : PowerPrecedence
func ^^ (d: Double, p: Int) -> Double {
    return (keratsubaPow(a: d, n: p))
}

func calculateSubExp(a: Double, b: Double, o: Character) -> Double {
    switch o {
    case "+":
        return a + b
    case "-":
        return a - b
    case "/":
        return a / b
    case "*":
        return a * b
    case "^":
        return a ^^ Int(b)
    default:
        return 2020
    }
}

func evaluate(expression: String) -> Double {
    var vals = [Double]()
    var ops = [Character]()
    
    var num: String = ""
    var flag: Bool = false
    
    for ch in expression {
        if ch.isNumber {
            num.append(ch)
            flag = true
        } else {
            if flag == true{
                vals.append(Double(num)!)
                num.removeAll(keepingCapacity: true)
            }
            flag = false
            if ch == ")" {
                let val_2: Double = vals.popLast()!
                let val_1: Double = vals.popLast()!
                let op: Character = ops.popLast()!
                vals.append(calculateSubExp(a: val_1, b: val_2, o: op))
            } else if ch != "(" && ch != " " {
                ops.append(ch)
            }
        }
    }
    return vals.last!
}

//let e1: String = "(12*((2*2)+1))"                     // = 60.0
//let e2: String = "((22 + 13) * 4)"                    // = 140.0
//let e3: String = "(((2^3)-3)+5)"                      // = 10.0
//let e4: String = "(((17/2)+3)^2)"                     // = 135,25
//let e5: String = "((23 + 6) * 2)"                     // = 58.0
//let e6: String = "((23+2)^2)"                         // = 625.0
//let e7: String = "((((((((1+2)-3)*4)/3)+2)*2)-20)^2)" // = 256.0
//let e8: String = "(4-(2*(3^2)))"                        // = -14.0
//print(2.75+1.5^^2)

//print(evaluate(expression: e8))
