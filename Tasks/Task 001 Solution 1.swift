import Foundation
var q=Int(readLine()!)!
while(q>0){
    let arr=readLine()!
            .components(separatedBy:" ")
            .map{Int($0)!}

    var n=arr[0]
    var m=arr[1]
    var s=arr[2]

    print((m+s-2)%n+1)
    q=q-1
}
