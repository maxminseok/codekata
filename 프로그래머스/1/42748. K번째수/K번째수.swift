import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var result = [Int]()
    
    for arr in commands {
        var newArray = [Int]()
        for (index,num) in array.enumerated() where index >= (arr[0]-1) && index <= (arr[1]-1) {
            newArray.append(num)
        }
        let sortedArray = newArray.sorted(by: <)
        print(sortedArray)
        result.append(sortedArray[(arr[2]-1)])
    }
    return result
}