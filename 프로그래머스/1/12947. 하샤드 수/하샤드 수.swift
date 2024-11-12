import Foundation

func solution(_ x:Int) -> Bool {
    let num = Array(String(x))
    var total = 0
    for char in num {
        guard let number = Int(String(char)) else {return false}
        total += number
    }
    return x % total == 0 ? true : false
}