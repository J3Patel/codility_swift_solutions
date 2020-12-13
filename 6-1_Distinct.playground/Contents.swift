
import Foundation


// Result https://app.codility.com/demo/results/training26SX2X-523/

public func solution(_ A : inout [Int]) -> Int {
    return Set<Int>(A).count
}


var A = [0,1,0,1,1]
solution(&A)
