import Foundation

func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {
    // 던전의 방문 여부를 체크할 배열
    var visited = Array(repeating: false, count: dungeons.count)
    // 최대 던전 탐험 횟수를 저장
    var maxCount = 0
    
    func dfs(_ fatigue: Int, _ count: Int){
        // 최대 탐험 횟수 업데이트
        maxCount = max(maxCount, count)
        
        // 현재 피로도로 갈 수 있는 던전 탐색
        for (index, dungeon) in dungeons.enumerated() {
            // 이미 다녀간 던전은 건너뛰기
            if visited[index] { continue }
            
            // 현재 피로도가 최소 필요 피로도보다 클 경우 던전 탐험
            if fatigue >= dungeon[0] {
                // 다녀간 던전으로 체크
                visited[index] = true
                // 다음 던전으로 이동
                dfs(fatigue - dungeon[1], count + 1)
                // 방문 상태 복구
                visited[index] = false
            }
        }
    }
    // 초기 피로도와 0회 탐험으로 DFS 시작
    dfs(k, 0)
    return maxCount
}