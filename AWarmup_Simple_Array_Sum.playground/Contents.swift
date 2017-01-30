import Foundation

let arr = [1, 2, 3, 4, 10, 11]


var sum = 0
for var i in 0..<arr.count {
    sum = sum + arr[i]
}

print(sum)