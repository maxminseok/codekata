import Foundation

var scores = Int(readLine()!)!

switch scores {
case 0..<60:
    print("F")
case 60...69:
    print("D")
case 70...79:
    print("C")
case 80...89:
    print("B")
case 90...100:
    print("A")
default:
    print("유효한 점수가 아닙니다.")
}
