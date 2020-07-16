//
//  Created by Kyungmin Lee on 2020/07/16.
//

import Foundation
import XCTest

/**
 #27. Remove Element
 
 Given an array nums and a value val, remove all instances of that value in-place and return the new length.

 Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.

 The order of elements can be changed. It doesn't matter what you leave beyond the new length.
 
 Example 1:
 ~~~~
 Given nums = [3,2,2,3], val = 3,

 Your function should return length = 2, with the first two elements of nums being 2.

 It doesn't matter what you leave beyond the returned length.
 ~~~~
 
 Example 2:
 ~~~~
 Given nums = [0,1,2,2,3,0,4,2], val = 2,

 Your function should return length = 5, with the first five elements of nums containing 0, 1, 3, 0, and 4.

 Note that the order of those five elements can be arbitrary.

 It doesn't matter what values are set beyond the returned length.
 ~~~~
 
 Submissions:
 - Runtime: 12 ms, faster than 68.70% of Swift online submissions for Remove Element.
 - Memory Usage: 20.9 MB, less than 71.43% of Swift online submissions for Remove Element.
*/
func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    guard nums.count != 0 else {
        return 0
    }
    
    nums = nums.filter{$0 != val}
            
    return nums.count
}

// Test Code
extension SolutionTests {
    
    func testRemoveElement_case1() {
        // Given-When-Then (준비-실행-검증)
        
        // Given
        var nums = [3,2,2,3]
        let val = 3
        
        let outputNums = [2,2]
        let outputReturn = 2
        
        
        // When
        let result = removeElement(&nums, val)
 
        // Then
        XCTAssertEqual(nums, outputNums)
        XCTAssertEqual(result, outputReturn)
    }
    
    func testRemoveElement_case2() {
        // Given-When-Then (준비-실행-검증)
        
        // Given
        var nums = [0,1,2,2,3,0,4,2]
        let val = 2
        
        let outputNums = [0,1,3,0,4]
        let outputReturn = 5
        
        // When
        let result  = removeElement(&nums, val)
    
        // Then
        XCTAssertEqual(nums, outputNums)
        XCTAssertEqual(result, outputReturn)
       }
    
}
