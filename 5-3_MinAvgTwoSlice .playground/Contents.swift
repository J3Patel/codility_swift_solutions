
import Foundation

// Result
// https://app.codility.com/demo/results/trainingXXWRFZ-XSS/

public func solution(_ A : inout [Int]) -> Int {
    var avg: Double = 1000000
    var minIndex = 0
    
    func setavg(a: Double, index: Int) {
        if a < avg {
            avg = a
            minIndex = index
        }
    }
    
    for i in 0..<A.count - 1 {
        
        if i < A.count - 2 {
            let a = Double(A[i] + A[i+1] + A[i+2]) / Double(3)
            setavg(a: a, index: i)
        }
        
        let a = Double(A[i] + A[i+1]) / Double(2)
        setavg(a: a, index: i)
        
    }
    return minIndex
}

var A = [4,2,2,5,1,5,8]
solution(&A)
