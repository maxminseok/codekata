import Foundation

func solution(_ n:Int) -> Int
{
    var charNumber: [Character] = []
    var stringNumbers = String(n)
    var sum = 0
    
    for char in stringNumbers {
        charNumber.append(char)
    }
    for i in charNumber {
        if let num = Int(String(i)) {
            sum += num
        }
    }
  
    return sum
}