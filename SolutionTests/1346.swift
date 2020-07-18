//
//  Created by Kyungmin Lee on 2020/07/19.
//

import Foundation
import XCTest

/**
 #1346. Check If N and Its Double Exist
 
 Given an array arr of integers, check if there exists two integers N and M such that N is the double of M ( i.e. N = 2 * M).

 More formally check if there exists two indices i and j such that:
    - i != j
    - 0 <= i, j < arr.length
    - arr[i] == 2 * arr[j]
  
 
 Example 1:
 ~~~~
 Input: arr = [10,2,5,3]
 Output: true
 Explanation: N = 10 is the double of M = 5,that is, 10 = 2 * 5.
 ~~~~
 Example 2:
 ~~~~
 Input: arr = [7,1,14,11]
 Output: true
 Explanation: N = 14 is the double of M = 7,that is, 14 = 2 * 7.
 ~~~~
 Example 3:
 ~~~~
 Input: arr = [3,1,7,11]
 Output: false
 Explanation: In this case does not exist N and M, such that N = 2 * M.
 ~~~~
 
 Constraints:
    - 2 <= arr.length <= 500
    - -10^3 <= arr[i] <= 10^3
 
 Submissions:
    - Runtime: 24 ms, faster than 100.00% of Swift online submissions for Check If N and Its Double Exist.
    - Memory Usage: 20.6 MB, less than 88.57% of Swift online submissions for Check If N and Its Double Exist.
*/
func checkIfExist(_ arr: [Int]) -> Bool {
    var result = false
    
    for i in 0..<arr.count {
        for j in 0..<arr.count {
            if i == j {
                continue
            }
            
            if arr[i] == 2 * arr[j] {
                result = true
                return result
            }
        }
    }
    
    return result
}

// Test Code
extension SolutionTests {

    func testCheckIfExist_case1() {
        // Given-When-Then (준비-실행-검증)
        
        // Given
        let input = [10,2,5,3]
        let output = true
        
        // When
        let result = checkIfExist(input)
        
        // Then
        XCTAssertEqual(result, output)
    }
    
    func testCheckIfExist_case2() {
        // Given-When-Then (준비-실행-검증)
        
        // Given
        let input = [7,1,14,11]
        let output = true
        
        // When
        let result = checkIfExist(input)
        
        // Then
        XCTAssertEqual(result, output)
    }
    
    func testCheckIfExist_case3() {
        // Given-When-Then (준비-실행-검증)
        
        // Given
        let input = [3,1,7,11]
        let output = false
        
        // When
        let result = checkIfExist(input)
        
        // Then
        XCTAssertEqual(result, output)
    }
}
