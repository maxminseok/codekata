import Foundation

var inputNumber = readLine()!
var inputLine = inputNumber.components(separatedBy: .whitespaces)

var A = Double(inputLine[0])!
var B = Double(inputLine[1])!

print(A/B)