// github.com/andy489

import Foundation

let s = readLine()!.map{String($0)}
let t = readLine()!.map{String($0)}
let k = Int(readLine()!)!

var com = 0,min_len = min(s.count,t.count)

while (com < min_len && s[com] == t[com]){
    com+=1
}

if s.count+t.count - 2*com > k {
    print("No")
} 
else if (s.count+t.count-2*com)&1 == k&1 {
    print("Yes")
} 
else if s.count + t.count - k < 0 {
    print("Yes")
} 
else {
    print("No")
}
