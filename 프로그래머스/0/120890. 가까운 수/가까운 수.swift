import Foundation

func solution(_ array:[Int], _ n:Int) -> Int {
    var distance: [Int : Int] = [:]
    for (index,number) in array.enumerated() {
        distance[index] = abs(number - n)
    }
    let index = distance
        .sorted {
            if $0.value == $1.value {
                return array[$0.key] < array[$1.key]
            }
            return $0.value < $1.value
        }
        .map { $0.key }[0]
    return array[index]
}