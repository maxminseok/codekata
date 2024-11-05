import Foundation

func solution(_ my_string:String) -> String {
    var arr: [String] = []
    
    for char in my_string {
        guard !arr.contains(String(char)) else { continue }
        arr.append(String(char))
    }
    var strings = ""
    for char in arr {
        strings += char
    }
    return strings
}