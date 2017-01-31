import Foundation

//let s = "07:05:45PM"
let s = "12:00:00AM"

//// Read the string
//let s = readLine()!

let hourIndex: String.Index = s.index(s.startIndex, offsetBy: 2)
let timeIndex: String.Index = s.index(s.endIndex, offsetBy: -2)

let timeString: String = s.substring(from: timeIndex)
var hour = Int(s.substring(to: hourIndex))!

var militaryTime = s.substring(to: timeIndex)
militaryTime = militaryTime.substring(from: hourIndex)

if hour == 12 {
    hour = 0
}

if timeString == "PM" {
    hour += 12
}

print(String(format: "%02d", hour) + militaryTime)
