func solution(_ n:Int64) -> [Int] {
    let input: String = String(n)
    var arr: [Int] = []
    
    for char in input.reversed() {
        guard let num = Int(String(char)) else { return [] }
        arr.append(num)
    }
    return arr
}