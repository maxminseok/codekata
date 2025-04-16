import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var completeDate: [Int] = zip(progresses, speeds).map {
        Int(ceil((100 - Double($0)) / Double($1)))
    }
    var distribution: [Int] = []
    
    while !completeDate.isEmpty {
        let currentMax = completeDate.removeFirst()
        var count = 1
        
        while let next = completeDate.first, next <= currentMax {
            completeDate.removeFirst()
            count += 1
        }
        
        distribution.append(count)
    }

    return distribution
}