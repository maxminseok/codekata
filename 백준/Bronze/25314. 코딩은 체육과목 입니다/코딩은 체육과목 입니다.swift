import Foundation

var long: String = ""

if let input = readLine(), let n = Int(input) {
    for _ in 0..<(n / 4) {
        long += "long "
    }
}else {
    print("Input Error")
}

print("\(long)int")