import Foundation

var numbers: [Int] = []
var money: Int = 0

if let input = readLine() {
    let inputArr = input.split(separator: " ") // 공백을 기준으로 나누기
    numbers = inputArr.compactMap { Int($0) } // 배열 요소 숫자로 변환
} else {
        print("유효한 숫자가 아닙니다.")
    }

var sortedDiceNumber = numbers.sorted() // 정렬된 주사위 숫자

//다 같을 경우
if sortedDiceNumber[0] == sortedDiceNumber[1] && sortedDiceNumber[1] == sortedDiceNumber[2] {
    money = 10000 + sortedDiceNumber[0] * 1000
}
//다 다를 경우
else if sortedDiceNumber[0] != sortedDiceNumber[1] && sortedDiceNumber[1] != sortedDiceNumber[2] {
    money = sortedDiceNumber[2] * 100
}
//두 개가 같을 경우
else if sortedDiceNumber[0] == sortedDiceNumber[1] || sortedDiceNumber[1] == sortedDiceNumber[2] {
    money = 1000 + sortedDiceNumber[1] * 100
}

print(money)