import Foundation

var input = readLine()!
var inputArr = input.components(separatedBy: .whitespaces)

var a = Int(inputArr[0])!
var b = Int(inputArr[1])!
var c = Int(inputArr[2])!

if (2...10000).contains(a) && (2...10000).contains(b) && (2...10000).contains(c) {
    print("\((a+b)%c)\n\(((a%c)+(b%c))%c)\n\((a*b)%c)\n\(((a%c)*(b%c))%c)")
}