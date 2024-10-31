import Foundation

var result: [Int] = []

if let count = Int(readLine()!) {
    for _ in 0..<count {
        if let input = readLine() {
            var inputArr = input.split(separator: " ").compactMap{Int($0)}
            result.append(inputArr[0]+inputArr[1])
        }
    }
    
    for i in 0..<count {
        print(result[i])
    }
}