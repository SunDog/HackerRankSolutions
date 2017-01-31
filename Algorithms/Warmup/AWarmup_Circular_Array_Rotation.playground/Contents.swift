import Foundation

let firstLine = [6, 60, 3]
let secondLine = [1, 2, 3, 4, 5, 6]
let queries = [0, 1, 2]

let n = firstLine[0]
let k = firstLine[1]
let q = firstLine[2]

//let firstLine = readLine()!.components(separatedBy: " ").map{ Int($0)! }
//let secondLine = readLine()!.components(separatedBy: " ").map{ Int($0)! }
//
//let n = firstLine[0]
//let k = firstLine[1]
//let q = firstLine[2]
//
//var queries = [Int]()
//for i in 0..<q {
//    queries.append(Int(readLine()!)!)
//}

var newIndex = 0

for i in 0..<q {
    newIndex = queries[i] - k
    
    if abs(newIndex) >= n {
        newIndex = newIndex % n
    }
    if newIndex < 0 {
        newIndex += n
    }
    
    print(secondLine[newIndex])
}
