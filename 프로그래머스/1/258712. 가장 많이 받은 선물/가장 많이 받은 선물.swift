import Foundation

func solution(_ friends:[String], _ gifts:[String]) -> Int {
    // 이름을 키로 하는 이중 딕셔너리 생성
    var giftRecord: [String : [String:Int]] = [:]
    for friend in friends {
        giftRecord["\(friend)"] = [:]
    }
    
    for record in gifts {
        let splitRecord = record.components(separatedBy: " ")
        let giver = splitRecord[0] // 선물 준 사람
        let reciver = splitRecord[1] // 선물 받은 사람
        
        giftRecord[giver]?[reciver, default: 0] += 1 // [받은 사람: 받은 횟수] 딕셔너리에 키를 reciver로 하는 딕셔너리의 밸류(receiver의 받은 횟수) +1 하기
    }
    
    //선물 지수 계산
    var givePresentCount: [String : Int] = [:] // 선물 준 횟수 카운트
    var receivePresentCount: [String : Int] = [:] // 선물 받은 횟수 카운트
    var presentIndex: [String : Int] = [:] // 선물 지수
    
    for (giver, receivers) in giftRecord { // giver - 선물 준 사람, receivers - [giver에게 선물 받은 사람들 : 받은 횟수]
        for (receiver, count) in receivers { // receiver : 선물 받은 사람, count: receiver가 받은 선물 횟수
            givePresentCount["\(giver)", default: 0] += count // giver가 receiver들에게 준 선물 갯수 누적 => [giver : count]
            receivePresentCount["\(receiver)", default: 0] += count // receiver가 giver에게 받은 선물 갯수 누적시키기
        }
    }
    
    for friend in friends {
        presentIndex[friend] = (givePresentCount[friend] ?? 0) - (receivePresentCount[friend] ?? 0)
    }
    
    // 다음달 선물 갯수
    var presentCount: [String : Int] = [:] // 다음달 선물 갯수
    
    for (index, A) in friends.enumerated() {
        let remainingFriends = friends[(index + 1)...]
        for B in remainingFriends {
            let giverPresent = giftRecord[A]?[B] ?? 0 // A가 B에게 준 선물 갯수
            let receiverPresent = giftRecord[B]?[A] ?? 0 // B가 A에게 준 선물 갯수
            
            // A가 B에게 준 선물 갯수가 B가 A에게 준 선물 갯수보다 많을 때
            if giverPresent > receiverPresent {
                presentCount["\(A)", default: 0] += 1 // A의 다음달 선물 갯수 +1
            }
            
            // A와 B가 주고받은 선물의 갯수가 같을 때 선물 지수 비교
            else if giverPresent == receiverPresent {
                if presentIndex["\(A)", default: 0] > presentIndex["\(B)", default: 0] { // A의 선물지수가 B보다 크다면
                    presentCount["\(A)", default: 0] += 1 // A의 다음달 선물 갯수 +1
                }
                else if presentIndex["\(A)", default: 0] < presentIndex["\(B)", default: 0] { // B의 선물지수가 A보다 크다면
                    presentCount["\(B)", default: 0] += 1 // B의 다음달 선물 갯수 +1
                }
            }
            
            // B가 A에게 준 선물 갯수가 A가 B에게 준 선물 갯수보다 많을 때
            else {
                presentCount["\(B)", default: 0] += 1 // B의 다음달 선물 갯수 +1
            }
        }
    }

    // 가장 많은 선물 반환
    return presentCount.values.max() ?? 0
}