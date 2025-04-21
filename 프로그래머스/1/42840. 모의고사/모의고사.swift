import Foundation

func solution(_ answers:[Int]) -> [Int] {
    let firstPattern: [Int] = [1, 2, 3, 4, 5]
    let secondPattern: [Int] = [2, 1, 2, 3, 2, 4, 2, 5]
    let thirdPattern: [Int] = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    
    let firstAnswer = Array(0..<answers.count).map { firstPattern[$0 % firstPattern.count] }
    let secondAnswer = Array(0..<answers.count).map { secondPattern[$0 % secondPattern.count] }
    let thirdAnswer = Array(0..<answers.count).map { thirdPattern[$0 % thirdPattern.count] }
    
    var count: [Int] = Array(repeating: 0, count: 3)
    
    for (index, answer) in answers.enumerated() {
        if answer == firstAnswer[index] { count[0] += 1 }
        if answer == secondAnswer[index] { count[1] += 1 }
        if answer == thirdAnswer[index] { count[2] += 1 }
    }

    let result = count.enumerated()
        .filter { $0.element == count.max() }
        .map { $0.offset + 1 }
        .sorted()
            
    return result
}