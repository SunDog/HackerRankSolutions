import Foundation

var n = 3
let arr: [[Int]] = [
    [11, 2, 4],
    [4, 5, 6],
    [10, 8, -12]
]
//// read the integer n
//let n = Int(readLine()!)!
//
//// declare 2d array
//var arr: [[Int]] = []
//
//// read array row-by-row
//for _ in 0..<n {
//    arr.append(readLine()!.components(separatedBy: " ").map{ Int($0)! })
//}
var primaryDiagonalSum = 0
var secondaryDiagonalSum = 0

for (i, line) in arr.enumerated() {
    primaryDiagonalSum += line[i]
    secondaryDiagonalSum += line[(n - 1) - i]
}

let difference = abs(primaryDiagonalSum - secondaryDiagonalSum)

print(difference)