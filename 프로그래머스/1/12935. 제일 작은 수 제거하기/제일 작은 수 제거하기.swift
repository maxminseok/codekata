import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var result = arr
    if let min = result.min(), let minIndex = result.firstIndex(of: min) {
        result.remove(at: minIndex)
        }
    return arr.count == 1 ? [-1] : result
}