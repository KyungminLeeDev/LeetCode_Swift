//
//  Created by Kyungmin Lee on 2020/07/13.
//

import Foundation
import XCTest

/**
 #1295. Find Numbers with Even Number of Digits
 
 Given an array nums of integers, return how many of them contain an even number of digits.
 
 Example 1:
 ~~~~
 Input: nums = [12,345,2,6,7896]
 Output: 2
 Explanation:
    12 contains 2 digits (even number of digits).
    345 contains 3 digits (odd number of digits).
    2 contains 1 digit (odd number of digits).
    6 contains 1 digit (odd number of digits).
    7896 contains 4 digits (even number of digits).
    Therefore only 12 and 7896 contain an even number of digits.
 ~~~~
 Example 2:
 ~~~~
 Input: nums = [555,901,482,1771]
 Output: 1
 Explanation: Only 1771 contains an even number of digits.
 ~~~~
 
 - note:
    - 1 <= nums.length <= 500
    - 1 <= nums[i] <= 10^5
*/
func findNumbers(_ nums: [Int]) -> Int {
    return nums.filter{String($0).count & 1 == 0}.count
}


// Test Code
extension SolutionTests {
    
    func testFineNumbers() {
        // Given-When-Then (준비-실행-검증)
        
        // Given
        let inputValue = [[12,345,2,6,7896], [555,901,482,1771]]
        let outputValue = [2, 1]
        
        // When
        var testedValue = outputValue
        testedValue[0] = findNumbers(inputValue[0])
        testedValue[1] = findNumbers(inputValue[1])
        
        // Then
        XCTAssertEqual(testedValue[0], outputValue[0])
        XCTAssertEqual(testedValue[1], outputValue[1])
    }
    
}
