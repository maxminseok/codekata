import Foundation

if let input = readLine(), let years = Int(input) { // 입력을 받고 정수로 변환
    if years%4 == 0 && years%100 != 0 || years%400 == 0 {
        print("1")
    } else {
        print("0")
    }
} else {
    print("유효한 입력이 아닙니다.") // 입력이 유효하지 않을 때
}