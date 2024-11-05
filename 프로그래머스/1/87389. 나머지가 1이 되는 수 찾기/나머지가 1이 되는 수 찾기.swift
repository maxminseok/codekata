import Foundation

func solution(_ n:Int) -> Int {
    var num = 0
    for i in 1...n {
        if n % i == 1 {
            num += i
            break
        }
    }
    return num
}