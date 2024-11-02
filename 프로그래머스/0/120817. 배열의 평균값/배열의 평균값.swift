import Foundation

let numbers: [Int] = [1, 2, 3, 4, 5, 6, 7, 8 , 9, 10]

func solution(_ numbers:[Int]) -> Double {
    var total: Double = 0
    for number in numbers {
        total += Double(number)
    }
    
    return total / Double(numbers.count)
}