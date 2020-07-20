//
//  Created by Kyungmin Lee on 2020/07/20.
//

import Foundation
import XCTest

/**
 #941. Valid Mountain Array
 
 Given an array A of integers, return true if and only if it is a valid mountain array.

 Recall that A is a mountain array if and only if:
    - A.length >= 3
    - There exists some i with 0 < i < A.length - 1 such that:
        - A[0] < A[1] < ... A[i-1] < A[i]
        - A[i] > A[i+1] > ... > A[A.length - 1]
 
 Example 1:
 ~~~~
 Input: [2,1]
 Output: false
 ~~~~
 Example 2:
 ~~~~
 Input: [3,5,5]
 Output: false
 ~~~~
 Example 3:
 ~~~~
 Input: [0,3,2,1]
 Output: true
 ~~~~
 
 - note:
    - 0 <= A.length <= 10000
    - 0 <= A[i] <= 10000
 
 Submissions:
    - Runtime: 268 ms, faster than 44.75% of Swift online submissions for Valid Mountain Array.
    - Memory Usage: 20.9 MB, less than 84.09% of Swift online submissions for Valid Mountain Array.
*/
func validMountainArray(_ A: [Int]) -> Bool {
    guard A.count > 2 else {
        return false
    }
    
    let length = A.count - 1
    var increase = true
    
    for i in 0..<length {
        if increase {
            if A[i] == A[i + 1] {
               return false
            } else if A[i] > A[i + 1] {
                if i < 1 {
                    return false
                }
                increase = false
            }
        } else {
            if A[i] == A[i + 1] {
                return false
            } else if A[i] < A[i + 1] {
                return false
            }
        }
    }
    
    return increase ? false : true
}

// Test Code
extension SolutionTests {
    
    func testValidMountainArray_case1() {
        // Given-When-Then (준비-실행-검증)
        
        // Given
        let input = [2,1]
        let output = false
        
        // When
        let result = validMountainArray(input)
        
        // Then
        XCTAssertEqual(result, output)
    }
    
    func testValidMountainArray_case2() {
        // Given-When-Then (준비-실행-검증)
        
        // Given
        let input = [3,5,5]
        let output = false
        
        // When
        let result = validMountainArray(input)
        
        // Then
        XCTAssertEqual(result, output)
    }
    
    func testValidMountainArray_case3() {
        // Given-When-Then (준비-실행-검증)
        
        // Given
        let input = [0,3,2,1]
        let output = true
        
        // When
        let result = validMountainArray(input)
        
        // Then
        XCTAssertEqual(result, output)
    }
    
}
