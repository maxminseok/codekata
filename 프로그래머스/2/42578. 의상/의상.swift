import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var countCategory: [String : Int] = [:]
    
    for cloth in clothes {
        let category = cloth[1]
        if countCategory.keys.contains(category) {
            countCategory[category, default: 0] += 1
        }
        else {
            countCategory[category] = 1
        }
    }
    
    var result = 1
    for number in countCategory {
        result *= (number.value + 1)
    }
    return result - 1
}

