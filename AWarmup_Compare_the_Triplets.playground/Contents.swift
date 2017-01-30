//: Playground - noun: a place where people can play

import Foundation

let A = [1,2,3]
let B = [1,2,3]

//// read array and map the elements to integer
//let A = readLine()!.components(separatedBy: " ").map{ Int($0)! }
//let B = readLine()!.components(separatedBy: " ").map{ Int($0)! }

var Alice = 0
var Bob = 0

for var i in 0..<A.count {
    guard A[i] != B[i] else {
        continue
    }
    
    if A[i] < B[i] {
        Bob += 1
    } else {
        Alice += 1
    }
    
}


print(Alice, Bob)