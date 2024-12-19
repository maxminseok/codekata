import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
        
    let total = brown + yellow

    var arr: [(Int, Int)] = []
    for height in 1...Int(sqrt(Double(total))) {
        if total % height == 0 {
            let width = total / height
            arr.append((width, height))
        }
    }
    
    var result = [Int]()
    for (width, height) in arr {
        if (width - 2) * (height - 2) == yellow {
            result.append(width)
            result.append(height)
        }
        if result.count == 2 { break }
    }
    
    return result
}