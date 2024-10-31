import Foundation

var X = Int(readLine()!)
var N = Int(readLine()!)

var a: [Int] = []
var b: [Int] = []

var total: Int = 0

for i in 0..<N! {
    let input = readLine()!.split(separator: " ")
    a.append(Int(input[0])!)
    b.append(Int(input[1])!)
    
    total += a[i] * b[i]
}

if total == X {
    print("Yes")
}
else {
    print("No")
}