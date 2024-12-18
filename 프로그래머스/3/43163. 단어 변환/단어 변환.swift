import Foundation

func solution(_ begin:String, _ target:String, _ words:[String]) -> Int {
    var queue: [(String, Int)] = [(begin, 0)]
    var visited: Set<String> = [begin]
    
    while !queue.isEmpty {
        let (currentWord, step) = queue.removeFirst()
        
        if currentWord == target {
            return step
        }

        for word in words {
            let arrWord = Array(word)
            let arrCurrentWord = Array(currentWord)
            var count = 0
            for i in 0..<arrWord.count {
                if arrWord[i] == arrCurrentWord[i] { count += 1 }
            }
            if count >= word.count - 1 {
                if !visited.contains(word) {
                    visited.insert(word)
                    queue.append((word, step + 1))
                }
            }
        }
    }
    return 0
}