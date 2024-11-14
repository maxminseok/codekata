import Foundation

func solution(_ num:Int) -> Int {
    var result = num
    var count = 0
    
    while result != 1 && count <= 500 {
        if result % 2 == 0 {
            result /= 2
            count += 1
        }
        else {
            result = result * 3 + 1
            count += 1
        }
    }
    return count > 500 ? -1 : count
}