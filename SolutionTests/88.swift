//
//  Created by Kyungmin Lee on 2020/07/15.
//

import Foundation
import XCTest

/**
 #88. Merge Sorted Array
 
 Given two sorted integer arrays nums1 and nums2, merge nums2 into nums1 as one sorted array.
 
 Example 1:
 ~~~~
 Input:
    nums1 = [1,2,3,0,0,0], m = 3
    nums2 = [2,5,6],       n = 3

 Output: [1,2,2,3,5,6]
 ~~~~
 
 - note:
    - The number of elements initialized in nums1 and nums2 are m and n respectively.
    - You may assume that nums1 has enough space (size that is equal to m + n) to hold additional elements from nums2.
*/
func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    nums1 = nums1.filter{$0 != 0} + nums2
    
    while nums1.count < m + n {
        nums1.append(0)
    }
    
    nums1.sort()
}

// Test Code
extension SolutionTests {
    
    func testMerge() {
        // Given-When-Then (준비-실행-검증)
        
        // Given
        var nums1 = [1,2,3,0,0,0], m = 3
        let nums2 = [2,5,6], n = 3
        let output = [1,2,2,3,5,6]
        
        // When
        merge(&nums1, m, nums2, n)
 
        // Then
        XCTAssertEqual(nums1, output)
    }
    
}
