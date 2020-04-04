// github.com/andy489

import Foundation

func kerPow(a: Double, n: Int)->Double {
    if n == 0 {return 1}
    else if n == 1 {return a}
    else if n & 1 == 1 {return kerPow(a:a, n:n/2) * kerPow(a:a,n:n/2) * a}
    else {return kerPow(a:a,n:n/2) * kerPow(a:a,n:n/2)}
}

print("Enter real number: ", terminator:"")
let a = Double(readLine()!)!
print("Enter natural number: ",terminator:"")
let p = Int(readLine()!)!

print(NSString(format: "%.3f", kerPow(a:a,n:p)))
