
import Foundation

public func solution(_ S : inout String, _ P : inout [Int], _ Q : inout [Int]) -> [Int] {
    var oa: [Int] = []
    
    var sumA = [0]
    var sumC = [0]
    var sumG = [0]
    var sumT = [0]
    
    for i in S {
        sumA.append(sumA.last! )
        sumC.append(sumC.last! )
        sumG.append(sumG.last! )
        sumT.append(sumT.last!)
        
        if i == "A" {
            sumA[sumA.count - 1] += 1
        } else if i == "C" {
            sumC[sumC.count - 1] += 1
        } else if i == "G" {
            sumG[sumG.count - 1] += 1
        } else {
            sumT[sumT.count - 1] += 1
        }
    }
    
    for i in 0..<P.count {
        if sumA[Q[i] + 1] - sumA[P[i]] > 0 {
            oa.append(1)
        } else if sumC[Q[i] + 1] - sumC[P[i]] > 0 {
            oa.append(2)
        } else if sumG[Q[i] + 1] - sumG[P[i]] > 0 {
            oa.append(3)
        } else {
            oa.append(4)
        }
    }
    
    // write your code in Swift 4.2.1 (Linux)
    return oa
}

var S = "CAGCCTA"
var P = [2,5,0]
var Q = [4,5,6]
solution(&S, &P, &Q)
