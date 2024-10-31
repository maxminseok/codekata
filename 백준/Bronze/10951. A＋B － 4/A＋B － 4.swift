import Foundation

var a: [Int] = []
var b: [Int] = []
var sum: [Int] = []

while let input = readLine() {
    let arr  = input.components(separatedBy: .whitespaces)
    a.append(Int(arr[0])!)
    b.append(Int(arr[1])!)
}

for i in 0..<a.count {
    sum.append(a[i] + b[i])
    print(sum[i])
}