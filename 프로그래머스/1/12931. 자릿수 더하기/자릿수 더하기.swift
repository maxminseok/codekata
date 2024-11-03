import Foundation

func solution(_ n:Int) -> Int
{
    var sum = 0
    
    for char in String(n) {
        if let num = Int(String(char)) {
            sum += num
        }
    }
    
    return sum
}