import Foundation

var inputTimes = readLine()!
var times = inputTimes.components(separatedBy: .whitespaces)
if let hour = Int(times[0]), let minute = Int(times[1]) {
    if hour >= 0 && hour <= 23 && minute >= 0 && minute <= 59 {
        if minute >= 45 {
            print("\(hour) \(minute - 45)")
        } else if hour > 0 && minute < 45 {
            print("\(hour-1) \(minute + 15)")
        } else if hour == 0 && minute < 45 {
            print("\(hour+23) \(minute + 15)")
        }
    } else {
        print("잘못된 시간입니다.")
    }
} else {
    print("잘못된 시간입니다.")
          }