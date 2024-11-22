import Foundation

func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
    
    var playsPerGenre: [String : [Int : Int]] = [:]
    var totalGenre: [String : Int] = [:]
    
    for (index, genre) in genres.enumerated() {
        playsPerGenre[genre, default: [index : 0]][index] = plays[index]
        totalGenre[genre, default: 0] += plays[index]
    }

    let sortedGenre = totalGenre.sorted { $0.value > $1.value }.map { $0.key }
    
    var result: [Int] = []
    for genre in sortedGenre {
        let sortedPlay = playsPerGenre[genre]!
            .sorted {
                if $0.value == $1.value {
                    return $0.key < $1.key
                }
                return $0.value > $1.value
            }
            .map { $0.key }
            .prefix(2)
        
        result.append(contentsOf: sortedPlay)
    }

    return result
}