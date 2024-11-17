import Foundation

func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    let result = arr.filter { $0 % divisor == 0 }.sorted(by: < )
    return result.count != 0 ? result : [-1]
}