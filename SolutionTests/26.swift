//
//  Created by Kyungmin Lee on 2020/07/17.
//

import Foundation
import XCTest

/**
 #26. Remove Duplicates from Sorted Array
  
 Given a sorted array nums, remove the duplicates in-place such that each element appear only once and return the new length.

 Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.
 
 Example 1:
 ~~~~
 Given nums = [1,1,2],

 Your function should return length = 2, with the first two elements of nums being 1 and 2 respectively.

 It doesn't matter what you leave beyond the returned length.
 ~~~~
 
 Example 2:
 ~~~~
 Given nums = [0,0,1,1,1,2,2,3,3,4],

 Your function should return length = 5, with the first five elements of nums being modified to 0, 1, 2, 3, and 4 respectively.

 It doesn't matter what values are set beyond the returned length.
 ~~~~
 
 Submissions:
 - Runtime: 68 ms, faster than 98.57% of Swift online submissions for Remove Duplicates from Sorted Array.
 - Memory Usage: 21.7 MB, less than 20.53% of Swift online submissions for Remove Duplicates from Sorted Array.
*/
func removeDuplicates(_ nums: inout [Int]) -> Int {
    guard !nums.isEmpty else {
        return 0
    }
    
    var i = 0

    for j in 1..<nums.count {
        if nums[j] != nums[i] {
            i += 1
            nums[i] = nums[j]
        }
    }

    return i + 1
}

// Test Code
extension SolutionTests {
    
    func testRemoveDuplicates_case1() {
        // Given-When-Then (준비-실행-검증)
               
        // Given
        var nums = [1,1,2]

        let outputNums = [1,2]
        let outputReturn = 2
        
        
        // When
        let resultReturn = removeDuplicates(&nums)
        let resultNums = Array(nums[0..<resultReturn])
        
        
        // Then
        XCTAssertEqual(resultNums, outputNums)
        XCTAssertEqual(resultReturn, outputReturn)
    }
    
    func testRemoveDuplicates_case2() {
        // Given-When-Then (준비-실행-검증)
               
        // Given
        var nums = [0,0,1,1,1,2,2,3,3,4]

        let outputNums = [0,1,2,3,4]
        let outputReturn = 5
        
        
        // When
        let resultReturn = removeDuplicates(&nums)
        let resultNums = Array(nums[0..<resultReturn])
        
        
        // Then
        XCTAssertEqual(resultNums, outputNums)
        XCTAssertEqual(resultReturn, outputReturn)
    }
    
}
