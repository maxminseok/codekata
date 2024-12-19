import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    
    let total = brown + yellow

    for height in 1...Int(sqrt(Double(total))) {
        if total % height == 0 {
            let width = total / height
            if (width - 2) * (height - 2) == yellow {
                return [width, height]
            }
        }
    }
    
    return []
}