import Foundation

let n = 6
let arr = [-4, 3, -9, 0, 4, 1]

//// number of elements
//let n = Int(readLine()!)!
//
//// read array and map the elements to integer
//let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }

var positives:Float = 0.0
var negatives:Float = 0.0
var zeroes:Float = 0.0

for i in arr {
    guard i >= 0 else {
        negatives += 1
        continue
    }
    
    guard i <= 0 else {
        positives += 1
        continue
    }
    
    zeroes += 1
}

print(String(format: "%.6f", positives/Float(n)))
print(String(format: "%.6f", negatives/Float(n)))
print(String(format: "%.6f", zeroes/Float(n)))
