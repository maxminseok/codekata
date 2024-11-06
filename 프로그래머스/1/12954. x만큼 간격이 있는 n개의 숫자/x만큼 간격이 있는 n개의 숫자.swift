func solution(_ x:Int, _ n:Int) -> [Int64] {
    var arr: [Int64] = []
    var num: Int64 = Int64(x)
    for i in 1...n {
        arr.append(Int64(i) * num)
    }
    return arr
}