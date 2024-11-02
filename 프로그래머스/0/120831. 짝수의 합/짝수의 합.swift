import Foundation

var evenNumber = 0

func solution(_ n:Int) -> Int {
    for i in 1...n{
        if i % 2 == 0 {
            evenNumber += i
        }
    }
    return evenNumber
}