import Foundation

if let input = readLine(), let N = Int(input) {
    for i in 1...N {
        for j in 1...i {
            print("*", terminator: "")
        }
        print("")
    }
}