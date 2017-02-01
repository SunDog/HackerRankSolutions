import Foundation

let T = 2
let arrTest = [9, 8]

//// number of elements
//let T = Int(readLine()!)!
//
//// read array and map the elements to integer
//var arrTest = [Int]()
//for i in 0..<T {
//    arrTest.append(Int(readLine()!)!)
//}

let start = Date()

for index in 0..<T {
    let N = arrTest[index]
    
    guard N % 2 == 0 else {
        print(0)
        continue
    }
    
    var divisors = [Int]()
    var mutualDivisors = 1
    var dividedN = N
    
    for i in 2..<N {
        guard dividedN > 1 else { continue }
        
        var occurence = 0
        
        while dividedN % i == 0 {
            dividedN = dividedN / i
            divisors.append(i)
            occurence += 1
        }
        
        guard occurence > 0 else { continue }
        
        mutualDivisors *= (occurence + 1)
        if i > 2 {
            mutualDivisors -= 1
        }
    }
    
    mutualDivisors -= 1
    print(mutualDivisors)
}


let timeInterval: Double = Date().timeIntervalSince(start)
