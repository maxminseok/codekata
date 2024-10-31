import Foundation

var inputNumber = readLine()!
var inputLine = inputNumber.components(separatedBy: .whitespaces)

var A = Int(inputLine[0])!
var B = Int(inputLine[1])!

if A > B {
    print(">")
} else if A < B {
    print("<")
} else if A == B {
    print("==")
}