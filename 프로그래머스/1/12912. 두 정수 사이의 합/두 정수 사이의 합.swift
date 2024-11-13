import Foundation

func solution(_ a:Int, _ b:Int) -> Int64 {
    var total = 0
    if b > a {
        for i in a...b {
            total += i
        }
    }
    else {
        for i in b...a {
            total += i
        }
    }
    
    return Int64(total)
}