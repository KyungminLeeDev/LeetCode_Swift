//
//  Created by Kyungmin Lee on 2020/07/13.
//

import Foundation
import XCTest

// 485. Max Consecutive Ones
/**
 Given a binary array, find the maximum number of consecutive 1s in this array.
 
 Example 1:
 ~~~~
 Input: [1,1,0,1,1,1]
 Output: 3
 Explanation:
    The first two digits or the last three digits are consecutive 1s.
    The maximum number of consecutive 1s is 3.
 ~~~~
 
 - note:
    - The input array will only contain 0 and 1.
    - The length of input array is a positive integer and will not exceed 10,000
*/
func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
    var count = 0
    var max = 0
    
    for n in nums {
        if n == 1 {
            count += 1
            if count > max {
                max = count
            }
        } else {
            count = 0
        }
    }
        
    return max
}


/// Test findMaxConsecutiveOnes()
class FindMaxConsecutiveOnesTest: XCTestCase {
    
    func testFindMaxConsecutiveOnes() {
        // Given-When-Then (준비-실행-검증)
        
        // Given
        let inputValue = [1,1,0,1,1,1]
        let outputValue = 3
        
        // When
        let testedValue = findMaxConsecutiveOnes(inputValue)
        
        // Then
        XCTAssertEqual(testedValue, outputValue)
        
    }
    
}
