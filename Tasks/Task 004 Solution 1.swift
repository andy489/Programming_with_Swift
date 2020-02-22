import Foundation
var nk=readLine()!
      .components(separatedBy:" ")
      .map{Int($0)!}
var n=nk[0],k=nk[1]
var c=readLine()!
      .components(separatedBy:" ")
      .map{Int($0)!}
var i:Int=0,e:Int=100
repeat{
    i=(i+k)%n
    switch c[i]:Int{
        case 0:
        e-=1
        case 1:
        e-=3
    }
}while(i!=0&&e>0)
print(e)
