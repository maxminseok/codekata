import Foundation

func solution(_ n:Int64) -> Int64 {
    var arr: [String] = []
    for char in String(n) {
        guard let num = Int(String(char)) else { return 0 }
        arr.append(String(num))
    }
    
    for i in arr.startIndex..<arr.endIndex {
        for j in i..<arr.endIndex {
            if Int(arr[i])! < Int(arr[j])! {
                let temp = arr[j]
                arr[j] = arr[i]
                arr[i] = temp
            }
        }
    }
    return Int64(arr.joined())!
}