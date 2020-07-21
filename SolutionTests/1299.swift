//
//  Created by Kyungmin Lee on 2020/07/21.
//

import Foundation
import XCTest

/**
 #1299. Replace Elements with Greatest Element on Right Side
 
 Given an array arr, replace every element in that array with the greatest element among the elements to its right, and replace the last element with -1.

 After doing so, return the array.
 
 Example 1:
 ~~~~
 Input: arr = [17,18,5,4,6,1]
 Output: [18,6,6,6,1,-1]
 ~~~~
 
 Constraints:
    - 1 <= arr.length <= 10^4
    - 1 <= arr[i] <= 10^5
 
 Submissions:
    - Runtime: 172 ms, faster than 50.51% of Swift online submissions for Replace Elements with Greatest Element on Right Side.
    - Memory Usage: 21.5 MB, less than 100.00% of Swift online submissions for Replace Elements with Greatest Element on Right Side.
*/
func replaceElements(_ arr: [Int]) -> [Int] {
    guard !arr.isEmpty else {
        return []
    }
    
    if arr.count == 1 {
        return [-1]
    }
    
    var result = arr
    result.append(-1)
    result.reverse()
    result.removeLast()
    
    let length = arr.count - 1
    var max = -2
    
    for i in 0...length {
        max = max > result[i] ? max:result[i]
        result[i] = max
    }
    
             
    
    return result.reversed()
}

// Test Code
extension SolutionTests {
    
    func testReplaceElements() {
        // Given-When-Then (준비-실행-검증)
        
        // Given
        let input = [17,18,5,4,6,1]
        let output = [18,6,6,6,1,-1]
        
        // When
        let result = replaceElements(input)
        
        // Then
        XCTAssertEqual(result, output)
    }
    
    
}
