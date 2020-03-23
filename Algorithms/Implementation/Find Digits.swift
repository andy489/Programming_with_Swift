// github.com/andy489

import Foundation

var q=Int(readLine()!)!

func calcDiv(n: Int, divs: [Bool])->Int{
    var c=0
    var n=n
    repeat {
        let a=n%10
        if divs[a]{
            c+=1
        }
        n/=10
    }   while n>0
    return c
}

for _ in 1...q{
    let num=Int(readLine()!)!
    var divisors=Array<Bool>(repeating: false,count: 10)
    for i in 1...9{
        if num%i==0{
            divisors[i]=true;
        }
    }
    print(calcDiv(n:num,divs:divisors))
}
