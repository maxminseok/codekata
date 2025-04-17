import Foundation

func solution(_ numbers:[Int]) -> String {
    let sortedNumbers = numbers
        .map { String($0) }
        .sorted { $0 + $1 > $1 + $0 }
    
     if sortedNumbers.first == "0" {
        return "0"
    }
                 
    return sortedNumbers.joined()
}