import Foundation

let n = 4

//// read the integer n
//let n = Int(readLine()!)!

var space = " "
var hashTag = "#"

for stair in 1...n {
    var stairString = ""
    
    for i in 1...n {
        if stair <= n-i {
            stairString.append(space)
        } else {
            stairString.append(hashTag)
        }
    }
    
    print(stairString)
}