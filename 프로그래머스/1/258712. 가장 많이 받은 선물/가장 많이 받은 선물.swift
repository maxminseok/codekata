import Foundation

func solution(_ friends:[String], _ gifts:[String]) -> Int {
    var presentCount: [String : Int] = [:] // 다음달 예상 선물 개수
    var presentIndex: [String : Int] = [:] // 선물 지수
    
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
    
    //선물 지수 먼저 계산 해놓기
    var giverPresentCount: [String : Int] = [:] // giver가 receiver들에게 선물 준 횟수 카운트
    var receiverPresentCount: [String : Int] = [:] // giver가 receiver들에게 받은 선물 횟수 카운트
    for (giver, receivers) in giftRecord { // giver - 선물 준 사람, receivers - [giver에게 선물 받은 사람들 : 받은 횟수]
        for (receiver, count) in receivers { // receiver : 선물 받은 사람, count: receiver가 받은 선물 횟수

            giverPresentCount["\(giver)", default: 0] += count // giver가 receiver들에게 준 선물 갯수 누적 => [giver : count]
            receiverPresentCount["\(receiver)", default: 0] += count //receiver가 giver에게 받은 선물 갯수 누적 => [receiver : count]
        }
    }
    for friend in friends {
        presentIndex[friend] = (giverPresentCount[friend] ?? 0) - (receiverPresentCount[friend] ?? 0)
    }
    
    // 다음달 선물 갯수
    for i in 0..<friends.count {
        for j in (i+1)..<friends.count {
            let giverPresent = giftRecord[friends[i]]?[friends[j]] ?? 0 // A가 B에게 준 선물 갯수
            let receiverPresent = giftRecord[friends[j]]?[friends[i]] ?? 0 // B가 A에게 준 선물 갯수
            
            if giverPresent > receiverPresent { // A가 B에게 준 선물 갯수가 B가 A에게 준 선물 갯수보다 많다면
                presentCount["\(friends[i])", default: 0] += 1 // A의 다음달 선물 갯수 +1
            }
            else if giverPresent == receiverPresent || (giverPresent == 0 && receiverPresent == 0)  { // A와 B가 주고받은 선물의 갯수가 같거나 주고받은 기록이 없을때 선물 지수 비교
                if presentIndex["\(friends[i])", default: 0] > presentIndex["\(friends[j])", default: 0] { // A의 선물지수가 B보다 크다면
                    presentCount["\(friends[i])", default: 0] += 1 // A의 다음달 선물 갯수 +1
                } else if presentIndex["\(friends[i])", default: 0] < presentIndex["\(friends[j])", default: 0] { // B의 선물지수가 A보다 크다면
                    presentCount["\(friends[j])", default: 0] += 1 // B의 다음달 선물 갯수 +1
                }
            }
            else if giverPresent < receiverPresent { // B가 A에게 준 선물 갯수가 A가 B에게 준 선물 갯수보다 많은 경우
                presentCount["\(friends[j])", default: 0] += 1 // B의 다음달 선물 갯수 +1
            }
        }
    }
    
    //결과 반환
    if let maxCount = presentCount.max(by: { $0.value < $1.value }) {
        return maxCount.value
    } else {
        return 0
    }
}