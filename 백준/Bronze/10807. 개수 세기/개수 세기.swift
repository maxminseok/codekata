import Foundation

let N = Int(readLine()!)!
let inputNumbers = readLine()!
let numbers = inputNumbers.components(separatedBy: .whitespaces)
let inputFindNumber = readLine()!
var count = 0

for i in 0..<N {
    if numbers[i] == inputFindNumber {
        count += 1
    }
}

print(count)