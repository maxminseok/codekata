func solution(_ num:Int) -> String {
    if num % 2 == 1 || num % 2 == -1 {
        return "Odd"
    }
    else {
        return "Even"
    }
}