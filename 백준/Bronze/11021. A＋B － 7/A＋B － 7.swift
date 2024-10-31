import Foundation

var a: [Int] = []
var b: [Int] = []
var sum: [Int] = []

if let t = readLine(), let T = Int(t) {
    for i in 1...T {
        if let inputNumber = readLine() {
            var inputArr = inputNumber.split(separator: " ")
            a.append(Int(inputArr[0])!)
            b.append(Int(inputArr[1])!)
            }
        }
    for i in 0..<T {
        sum.append(a[i] + b[i])
        print("Case #\(i+1): \(sum[i])")
    }
}