//
//  Created by Kyungmin Lee on 2020/07/28.
//

import Foundation
import XCTest

/**
 #747. Largest Number At Least Twice of Others
 
 - Difficulty: Easy
 - Topics: Array
 
 In a given integer array nums, there is always exactly one largest element.

 Find whether the largest element in the array is at least twice as much as every other number in the array.

 If it is, return the index of the largest element, otherwise return -1.
 
 주어진 정수 배열 'nums'에는 항상 가장 큰 원소가 하나 있습니다.

 배열에서 가장 큰 원소가 배열의 다른 모든 숫자의 두 배 이상인지 확인하세요.

 맞으면, 가장 큰 원소의 인덱스를 반환하고, 아니면 '-1'을 반환하세요.

 Example 1:
 ~~~~
 Input: nums = [3, 6, 1, 0]
 Output: 1
 Explanation: 6 is the largest integer, and for every other number in the array x,
 6 is more than twice as big as x.  The index of value 6 is 1, so we return 1.
 ~~~~
 
 Example 2:
 ~~~~
 Input: nums = [1, 2, 3, 4]
 Output: -1
 Explanation: 4 isn't at least as big as twice the value of 3, so we return -1.
 ~~~~
 
 Note:
 - nums will have a length in the range [1, 50].
 - Every nums[i] will be an integer in the range [0, 99].
 
 Solution:
 1. 'nums'배열의 최대값을 찾는다.
 2. 'nums'배열을 순회하며 원소에 곱하기 2한 값이 최댓값보다 크면 '-1'반환한다.
 3. 배열 순회가 끝나면 최댓값의 인덱스를 찾아서 반환한다.
 
 Submissions:
 - Runtime: 8 ms, faster than 100.00% of Swift online submissions for Largest Number At Least Twice of Others.
 - Memory Usage: 20.9 MB, less than 42.86% of Swift online submissions for Largest Number At Least Twice of Others.
*/
func dominantIndex(_ nums: [Int]) -> Int {
    guard nums.count != 1 else {
        return 0
    }
    
    let max = nums.max()!
    
    for n in nums {
        if n == max {
            continue
        }
        
        if n * 2 > max {
            return -1
        }
    }
    
    return nums.firstIndex(of: max)!
}

// Test Code
extension SolutionTests {
    
    func testDominantIndex_case1() {
        // Given-When-Then (준비-실행-검증)
        
        // Given
        let input = [3,6,1,0]
        let output = 1
        
        // When
        let result = dominantIndex(input)
        
        // Then
        XCTAssertEqual(result, output)
    }
    
    func testDominantIndex_case2() {
        // Given-When-Then (준비-실행-검증)
        
        // Given
        let input = [1,2,3,4]
        let output = -1
        
        // When
        let result = dominantIndex(input)
        
        // Then
        XCTAssertEqual(result, output)
    }
    
}

