//
//  Created by Kyungmin Lee on 2020/07/31.
//

import Foundation
import XCTest

func isMonotonic(_ A: [Int]) -> Bool {
    var up = true
    var down = true
    
    for i in 0..<(A.count - 1) {
        if up && A[i] > A[i + 1] {
            up = false
        } else if down && A[i] < A[i + 1] {
            down = false
        }
        
        // 둘다 false면 바로 false 리턴
        if !up && !down {
            return false
        }
    }
    
    return true
}
