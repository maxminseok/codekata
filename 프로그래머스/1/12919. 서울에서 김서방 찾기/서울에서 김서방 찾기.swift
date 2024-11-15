import Foundation

func solution(_ seoul:[String]) -> String {
    guard let here = seoul.firstIndex(of: "Kim") else { return "없다" }
    return "김서방은 \(here)에 있다"
}