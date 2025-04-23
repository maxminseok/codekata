import Foundation

func solution(_ numbers: [Int], _ target: Int) -> Int {
    let sum = numbers.reduce(0, +)
    let p = (sum + target)

    // 조건: (sum + target) 짝수여야 함
    if p % 2 != 0 || abs(target) > sum {
        return 0
    }

    let targetSum = p / 2
    var dp = Array(repeating: 0, count: targetSum + 1)
    dp[0] = 1  // 합 0을 만드는 방법은 1가지 (선택 안함)

    for num in numbers {
        for i in stride(from: targetSum, through: num, by: -1) {
            dp[i] += dp[i - num]
        }
    }

    return dp[targetSum]
}