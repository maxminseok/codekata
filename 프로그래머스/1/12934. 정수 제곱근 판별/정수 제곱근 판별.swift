import Foundation

func solution(_ n:Int64) -> Int64 {
    let x = sqrt(Double(n))
    if x == floor(x) {
        return Int64(pow(x+1, 2))
    }
    else {
        return -1
    }
}