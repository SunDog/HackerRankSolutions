import Foundation

let n = 5
let arr = [1000000001, 1000000002, 1000000003, 1000000004, 1000000005]

//// number of elements
//let n = Int(readLine()!)!
//
//// read array and map the elements to integer
//let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }

var sum = 0

for var i in 0..<n {
    sum += arr[i]
}

print(sum)