import Foundation

func solution(_ friends:[String], _ gifts:[String]) -> Int {
    // 이름을 키로 하는 이중 딕셔너리 생성
    var giftRecord: [String : [String:Int]] = [:]
    var presentIndex: [String : Int] = [:] // 선물 지수
    var presentCount: [String : Int] = [:] // 다음달 선물 갯수
    
    for friend in friends {
        giftRecord[friend] = [:]
        presentIndex[friend] = 0
        presentCount[friend] = 0
    }
    
    for record in gifts {
        let splitRecord = record.components(separatedBy: " ")
        let giver = splitRecord[0] // 선물 준 사람
        let receiver = splitRecord[1] // 선물 받은 사람
        
        giftRecord[giver]?[receiver, default: 0] += 1 // [받은 사람: 받은 횟수] 딕셔너리에 키를 reciver로 하는 딕셔너리의 밸류(receiver의 받은 횟수) +1 하기
        presentIndex[giver, default: 0] += 1
        presentIndex[receiver, default: 0] -= 1
    }
    
    // 다음달 선물 갯수
    for (index, A) in friends.enumerated() {
        //let remainingFriends = friends[(index + 1)...]
        for B in friends[(index + 1)...] {
            let giftAtoB = giftRecord[A]?[B] ?? 0 // A가 B에게 준 선물 갯수
            let giftBtoA = giftRecord[B]?[A] ?? 0 // B가 A에게 준 선물 갯수
            
            // A가 B에게 준 선물 갯수가 B가 A에게 준 선물 갯수보다 많을 때
            if giftAtoB > giftBtoA {
                //presentCount["\(A)", default: 0] += 1 // A의 다음달 선물 갯수 +1
                presentCount[A]? += 1
            }
            // B가 A에게 준 선물 갯수가 A가 B에게 준 선물 갯수보다 많을 때
            else if giftAtoB < giftBtoA {
                presentCount[B]? += 1 // B의 다음달 선물 갯수 +1
            }
            // A와 B가 주고받은 선물의 갯수가 같을 때 선물 지수 비교
            else {
                if presentIndex[A, default: 0] > presentIndex[B, default: 0] { // A의 선물지수가 B보다 크다면
                    presentCount[A]? += 1 // A의 다음달 선물 갯수 +1
                }
                else if presentIndex[A, default: 0] < presentIndex[B, default: 0] { // B의 선물지수가 A보다 크다면
                    presentCount[B]? += 1 // B의 다음달 선물 갯수 +1
                }
            }
        }
    }

    // 가장 많은 선물 반환
    return presentCount.values.max() ?? 0
}