import Foundation

var firstNumber = Int(readLine()!)!
var secondNumber = readLine()!

var arr: [Int] = []
var count = secondNumber.count

for num in secondNumber {
    if let number = Int(String(num)) {
        arr.append(number)
    }
}

var secondNumerUnwrapped = Int(secondNumber)!

for i in 0..<count {
    print("\(firstNumber*Int(arr[count-(i+1)]))")
}
print(firstNumber*Int(secondNumerUnwrapped))