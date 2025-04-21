import Foundation

func solution(_ answers:[Int]) -> [Int] {
    let firstPattern: [Int] = [1, 2, 3, 4, 5]
    let secondPattern: [Int] = [2, 1, 2, 3, 2, 4, 2, 5]
    let thirdPattern: [Int] = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    
    let patterns = [firstPattern, secondPattern, thirdPattern]
    
    let scores = patterns.map { pattern in
        zip(answers, (0..<answers.count).map { pattern[$0 % pattern.count] })
            .filter { $0 == $1 }
            .count
    }
    
    let maxScore = scores.max()
    let result = scores.enumerated()
        .filter { $0.element == maxScore }
        .map { $0.offset + 1 }
        .sorted()
            
    return result
}