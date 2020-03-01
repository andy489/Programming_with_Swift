import Foundation

func taumBday(b: Int, w: Int, bc: Int, wc: Int, z: Int) -> Int {
    // Write your code here
    var result = -1

    if abs(bc - wc) < z {
        result = b*bc + w*wc
    }
    else {        
        result = (b+w)*min(bc,wc) + (bc > wc ? b:w)*z
    }
    return result
}

guard let t = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

for tItr in 1...t {
    guard let firstMultipleInputTemp = readLine()?.replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression) else { fatalError("Bad input") }
    let firstMultipleInput = firstMultipleInputTemp.split(separator: " ").map{ String($0) }

    guard let b = Int(firstMultipleInput[0])
    else { fatalError("Bad input") }

    guard let w = Int(firstMultipleInput[1])
    else { fatalError("Bad input") }

    guard let secondMultipleInputTemp = readLine()?.replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression) else { fatalError("Bad input") }

    let secondMultipleInput = secondMultipleInputTemp.split(separator: " ").map{ String($0) }

    guard let bc = Int(secondMultipleInput[0])
    else { fatalError("Bad input") }

    guard let wc = Int(secondMultipleInput[1])
    else { fatalError("Bad input") }

    guard let z = Int(secondMultipleInput[2])
    else { fatalError("Bad input") }

    let result = taumBday(b: b, w: w, bc: bc, wc: wc, z: z)
    print(result)
}
