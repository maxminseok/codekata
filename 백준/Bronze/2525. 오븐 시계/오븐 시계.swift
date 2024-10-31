import Foundation

var inputTimes = readLine()!
var times = inputTimes.components(separatedBy: .whitespaces)
var inputDelay = Int(readLine()!)!

if var hour = Int(times[0]), var minute = Int(times[1]) {
    if hour >= 0 && hour <= 23 && minute >= 0 && minute <= 59 {
        if inputDelay >= 60 && (inputDelay+minute) >= 60 {
            hour += (inputDelay+minute) / 60
            minute += inputDelay % 60
            if hour >= 24{
                hour -= 24
            }
            if minute >= 60 {
                minute -= 60
            }
            print("\(hour) \(minute)")
        } else if inputDelay+minute < 60 {
                minute += inputDelay
                print("\(hour) \(minute)")
        } else if inputDelay+minute >= 60 {
            hour += 1
            minute -= 60 - inputDelay
            if hour >= 24 {
                hour -= 24
            }
            print("\(hour) \(minute)")
        }
    } else {
        print("잘못된 시간입니다.")
    }
} else {
    print("잘못된 시간입니다.")
          }