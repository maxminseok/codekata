import Foundation
func solution(_ n:Int) -> Int {
    guard n > 0 else { return 0 }
    var divisor: Set<Int> = []
    
    for i in 1...Int(sqrt(Double(n))) {
        if n % i == 0 {
            divisor.insert(i)
            divisor.insert(n/i)
        }
    }
    return divisor.reduce(0, +)
}