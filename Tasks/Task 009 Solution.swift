import Foundation

var q = Int(readLine()!)!
var result = [String]()

while q > 0 {
    var table = readLine()!
                .split(separator:" ")
    
    var full = String(table.last!)
    
    var email = full
                .split(separator:"@")
    
    if String(email.last!) == "gmail.com" {
        result.append(String(table.first!)) 
    }   
    q-=1
}

result.sort()

for name in result {
    print(name)
}
