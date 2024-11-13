import Foundation

func solution(_ a:Int, _ b:Int) -> Int64 {
    let n = abs(a - b) + 1
    let total = n * (a + b)
    
    return Int64(total / 2)
}