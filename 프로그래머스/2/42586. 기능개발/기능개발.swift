import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var completeDate: [Int] = zip(progresses, speeds).map {
        Int(ceil((100 - Double($0)) / Double($1)))
    }
    var distribution: [Int] = []
    var currentMax = completeDate[0]
    var count = 0

    for date in completeDate {
        if currentMax < date{
            distribution.append(count)
            currentMax = date
            count = 1
        } else {
            count += 1
        }
    }
    distribution.append(count)

    return distribution
}