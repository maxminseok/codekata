import Foundation

func solution(_ num1:Int, _ num2:Int) -> Int {
    var div = Double(num1) / Double(num2)
    var result = div * 1000
    return Int(result)
}