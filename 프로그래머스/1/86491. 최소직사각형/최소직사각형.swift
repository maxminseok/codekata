import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var maxWidth: Int = 0
    var maxHeight: Int = 0
    
    for size in sizes {
        guard let maxSize = size.max() else { return 0 }
        guard let minSize = size.min() else { return 0 }
        
        if (size[0] > maxWidth && size[1] > maxHeight) || (size[0] > maxHeight && size[1] > maxWidth)  {
            maxWidth = size[0]
            maxHeight = size[1]
        }
        else if maxSize > maxWidth && maxSize > maxHeight {
            if maxWidth > maxHeight { maxWidth = maxSize }
            else { maxHeight = maxSize }
        }
        else if maxWidth < minSize || maxHeight < minSize {
            if maxWidth > maxHeight { maxHeight = minSize }
            else { maxWidth = minSize }
        }
    }
    return maxWidth * maxHeight
}