
import Foundation


// Result https://app.codility.com/demo/results/trainingAVMT4J-G56/

public func solution(_ A : inout [Int]) -> Int {

    let A = A.sorted()
    let n = A.count
    
    if A[1] <= 0 {
        return max(A[0]*A[1]*A[n-1], A[n-3]*A[n-2]*A[n-1])
    } else {
        return A[n-3]*A[n-2]*A[n-1]
    }
}


var A = [5, 6, -4]
solution(&A)
