
import Foundation

public func solution(_ A : inout [Int]) -> Int {
    var mult = 0
    var passes = 0
    
    for i in A {
        if i == 0 {
            mult += 1
        } else {
            passes += mult
            if passes > 1000000000 {
                return -1
            }
        }
    }
    return passes
}

var A = [0,1,0,1,1]
solution(&A)
