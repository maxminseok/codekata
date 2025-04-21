import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var maxWidth: Int = 0
    var maxHeight: Int = 0
    
    for size in sizes {
        guard let width = size.max() else { return 0 }
        guard let height = size.min() else { return 0 }
        
        maxWidth = max(maxWidth, width)
        maxHeight = max(maxHeight, height)
    }
    
    return maxWidth * maxHeight
}