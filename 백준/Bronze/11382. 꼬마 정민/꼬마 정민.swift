import Foundation

var inputNumber = readLine()!
var inputLine = inputNumber.components(separatedBy: .whitespaces)

var sum: Int = 0

for i in inputLine {
    sum += Int(i)!
}
print(sum)