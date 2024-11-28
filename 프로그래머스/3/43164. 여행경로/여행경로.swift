import Foundation

class Node {
    let value: String   // value = 출발지,
    var children: [Node] = []   // children = 도착 가능한 목적지들의 객체를 담을 배열(재귀 호출을 위해 객체 저장)
    
    init(value: String) {
        self.value = value
    }
    
    func addChild(_ child: Node) {
        children.append(child)
        children.sort { $0.value < $1.value }   // 목적지를 알파벳 순으로 정렬
    }
}

func solution(_ tickets:[[String]]) -> [String] {
    // 딕셔너리로 출발지 - 목적지 연결해 저장
    var route = [String : Node]()
    for ticket in tickets {
        let departure = ticket[0] // 출발지
        let arrival = ticket[1]  // 목적지
        
        // 출발지에 대한 도착 가능 목적지들을 Node의 children에 저장
        if route[departure] == nil {
            route[departure] = Node(value: departure)
        }
        if route[arrival] == nil {
            route[arrival] = Node(value: arrival)
        }
        route[departure]!.addChild(route[arrival]!)
    }
    
    // dfs 구현
    var result = [String]()
    func dfs(_ node: Node) {
        // 출발지에 대한 목적지 배열이 비어있지 않을때까지 재귀 호출
        while !node.children.isEmpty {
            let nextNode = node.children.removeFirst() // 출발지에 대한 첫번째 목적지 반환 후 제거
            dfs(nextNode)
        }
        // 더 이상 갈 곳 없으면 결과에 추가
        result.append(node.value)
    }
    
    // dfs 탐색 시작, ICN에서 출발
    dfs(route["ICN"]!)
    
    // 결과는 역순으로 저장되므로 뒤집어서 반환
    return result.reversed()
}