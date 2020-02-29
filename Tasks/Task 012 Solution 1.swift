import Foundation

var n = Int(readLine()!)!

var clouds = readLine()!
             .split(separator:" ")
             .map{Int($0)!}

var i = 0, jumps = 0

while (i != n-1) {
    if i+2 < n && clouds[i+2] == 0 {
        i+=2
    }
    else {
        i+=1
    }
    jumps+=1
}

print(jumps)
