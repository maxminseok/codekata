import Foundation

if let input = readLine(), let number = Int(input) {
    for i in 1...9 {
        print("\(number) * \(i) = \(number * i)")
    }
}