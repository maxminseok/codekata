import Foundation

var a: [Int] = []
var b: [Int] = []
var sum: [Int] = []

var input = readLine()!

while input != "0 0" {
    let arr  = input.components(separatedBy: .whitespaces)
    a.append(Int(arr[0])!)
    b.append(Int(arr[1])!)
    input = readLine()!
}


for i in 0..<a.count {
    sum.append(a[i] + b[i])
    print(sum[i])
}