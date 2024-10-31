import Foundation

var sum: Int = 0

if let inputNumber = Int(readLine()!) {
    for i in 0...inputNumber {
        sum += i
    }
}

print(sum)
