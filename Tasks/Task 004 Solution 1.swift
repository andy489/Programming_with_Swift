import Foundation
var nk=readLine()!
       .components(separatedBy:" ")
       .map{Int($0)!}
var n=nk[0],k=nk[1]
var c=readLine()!
      .components(separatedBy:" ")
      .map{Int($0)!}
var i=0,e=100
repeat{
    i=(i+k)%n
    e=e-1-2*c[i]
}while i != 0 && e > 0
print(e)
