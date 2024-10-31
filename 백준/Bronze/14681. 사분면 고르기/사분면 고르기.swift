import Foundation

if let firstNumber = readLine(), let x = Int(firstNumber) { // 입력을 받고 정수로 변환
    if let secondNumber = readLine(), let y = Int(secondNumber) {
       if x > 0 && y > 0 {
            print("1")
        }
        else if x < 0 && y > 0 {
            print("2")
        } else if x > 0 && y < 0 {
            print("4")
        } else if x < 0 && y < 0 {
            print("3")
        }
   } else {
       print("유효한 입력이 아닙니다.") // 두번째 입력이 유효하지 않을 때
   }
} else {
    print("유효한 입력이 아닙니다.") // 첫번째 입력이 유효하지 않을 때
}
