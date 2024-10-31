import Foundation

var input = readLine()!
var arr = input.components(separatedBy: " ")

var A: Int = Int(arr[0])!
var B: Int = Int(arr[1])!

if A>=1, B>0&&B<=10000 {
    print("\(A+B)\n\(A-B)\n\(A*B)\n\(A/B)\n\(A%B)")

} else {
    print("A는 1이상, B는 10000이하의 자연수를 입력해주세요.")
}