// github.com/andy489

let arr1 = readLine()!.split(separator: " ").map{Int(String($0))!}

var A = [Int](repeating: 0, count: arr1[0] + 1)
var B = [Int](repeating: 0, count: arr1[0] + 1)

var lowest = arr1[1]
var highest = 0

for _ in 0...arr1[1] - 1 {
    let arr2 = readLine()!.split(separator: " ").map{Int(String($0))!}

    lowest = min(lowest, arr2[0])
    highest = max(highest, arr2[1])
    
    A[arr2[0]] += arr2[2]
    B[arr2[1]] += arr2[2]
}

var largest = 0
var temp_largest = 0

for index in lowest...highest {
    temp_largest += A[index]
    if largest < temp_largest {
        largest = temp_largest
    }
    temp_largest -= B[index];
}

print(largest)
