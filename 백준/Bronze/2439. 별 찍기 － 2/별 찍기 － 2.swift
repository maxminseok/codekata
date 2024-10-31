
import Foundation

if let input = readLine(), let N = Int(input) {
    for i in 1...N {
        for _ in 1...max(1, N-i) {
            if N-i == 0 {break}
            print(" ", terminator: "")
        }
        for _ in 1...i {
            print("*", terminator: "")
        }
        print("")
    }
}