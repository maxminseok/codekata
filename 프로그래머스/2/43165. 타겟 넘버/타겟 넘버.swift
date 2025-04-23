import Foundation

func solution(_ numbers:[Int], _ target:Int) -> Int {
        var count: Int = 0
    
    func dfs (_ index: Int, _ currentSum: Int) {
        if index == numbers.count {
            if currentSum == target {count += 1 }
        }
        else {
            var sum: Int = currentSum + numbers[index]
            var sub: Int = currentSum - numbers[index]
            dfs(index + 1, sum)
            dfs(index + 1, sub)
        }
    }
    
    dfs(0, 0)
    
    return count
}