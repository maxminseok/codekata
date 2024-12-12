import Foundation

func solution(_ n:Int, _ edge:[[Int]]) -> Int {
    // 그래프 만들기
    var graph = [Int: [Int]]()
    for arr in edge {
        let first = arr[0]
        let second = arr[1]
        
        if graph[first] == nil {
            graph[first] = []
        }
        if graph[second] == nil {
            graph[second] = []
        }
        
        graph[first]?.append(second)
        graph[second]?.append(first)
    }

    func bfs(graph: [Int: [Int]], start: Int) -> Int {
        var needVisitQueue: [Int] = [start]
        var distance = Array(repeating: -1, count: n+1)
        
        distance[start] = 0
        
        while !needVisitQueue.isEmpty {
            let node: Int = needVisitQueue.removeFirst()
            for neighbor in graph[node, default: []] {
                if distance[neighbor] == -1 {
                    distance[neighbor] = distance[node] + 1
                    needVisitQueue.append(neighbor)
                }
            }
        }
        
        let maxDistance = distance.max()
        let count = distance.filter { $0 == maxDistance }.count
        return count
    }
    
    let result = bfs(graph: graph, start: 1)
    return result
}