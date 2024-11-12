import Foundation 

func solution(_ phone_number:String) -> String {
    var number = Array(phone_number)
    for i in 0..<(number.count - 4) {
        number[i] = "*"
    }
    
    return String(number)
}