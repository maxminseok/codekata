func solution(_ n:Int64) -> [Int] {
    let input: String = String(n)
    var arr: [Int] = []
    
    for char in input {
        guard let num = Int(String(char)) else { return [] }
        arr.append(num)
    }
    var arr2: [Int] = []
    for i in arr {
        arr2.insert(i, at: 0)
    }
    return arr2
}