import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    var total = 0
    for i in 0..<absolutes.count {
        total += signs[i] ? absolutes[i] : -absolutes[i]
    }
    return total
}
