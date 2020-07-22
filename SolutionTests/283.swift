//
//  Created by Kyungmin Lee on 2020/07/22.
//

import Foundation
import XCTest

/**
 #283. Move Zeroes
 
 - Difficulty: Easy
 - Topics: Array
 
 Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.

 배열 'nums'가 주어지면 0이 아닌 원소의 순서를 유지하면서 모든 0을 끝으로 이동시키는 함수를 작성하세요.

 Example 1:
 ~~~~
 Input: [0,1,0,3,12]
 Output: [1,3,12,0,0]
 ~~~~
 
 Note:
 - You must do this in-place without making a copy of the array.
 - Minimize the total number of operations.
 
 
 
 Submissions:
 - Runtime: 40 ms, faster than 89.99% of Swift online submissions for Move Zeroes.
 - Memory Usage: 21.2 MB, less than 90.98% of Swift online submissions for Move Zeroes.
 
 Solution:
 - 배열을 순회하며 0이 아닌원소를 만날때마다 left 인덱스의 원소와 스왑한다.
 - 0일때는 left 인덱스를 유지한다.
*/
func moveZeroes(_ nums: inout [Int]) {
    var left = 0

    for i in 0..<nums.count {
        if nums[i] != 0 {
            nums.swapAt(i, left)
            left += 1
        }
    }
}

// Test Code
extension SolutionTests {
    
    func testMoveZeroes() {
        // Given-When-Then (준비-실행-검증)
        
        // Given
        var input = [0,1,0,3,12]
        let output = [1,3,12,0,0]
        
        // When
        moveZeroes(&input)
        
        // Then
        XCTAssertEqual(input, output)
    }
    
}
