import Foundation

func solution(_ s:String) -> Bool
{
    let countOfP = s.filter { $0 == "p" || $0 == "P" }.count
    let countOfY = s.filter { $0 == "y" || $0 == "Y" }.count
    return countOfP == countOfY
}