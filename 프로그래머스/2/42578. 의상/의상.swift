import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var countCategory: [String : Int] = [:]

    for cloth in clothes {
        let category = cloth[1]     
        countCategory[category, default: 0] += 1
    }

    var total = 1
    for number in countCategory {
        total *= (number.value + 1)
    }
    return total - 1
}
