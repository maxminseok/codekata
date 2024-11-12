import Foundation

func solution(_ x:Int) -> Bool {
    var total = 0
    for char in Array(String(x)) {
        guard let number = Int(String(char)) else {return false}
        total += number
    }
    return x % total == 0 ? true : false
}