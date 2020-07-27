//
//  Created by Kyungmin Lee on 2020/07/27.
//

import Foundation
import XCTest

/**
 #724. Find Pivot Index
 
 - Difficulty: Easy
 - Topics: Array
 
 Given an array of integers nums, write a method that returns the "pivot" index of this array.
 We define the pivot index as the index where the sum of all the numbers to the left of the index is equal to the sum of all the numbers to the right of the index.
 If no such index exists, we should return -1. If there are multiple pivot indexes, you should return the left-most pivot index.
 
 정수 배열이 주어지면 이 배열의 "중심" 인덱스를 반환하는 방법을 작성하세요.
 우리는 중심 인덱스를 인덱스 왼쪽의 모든 숫자의 합이 인덱스 오른쪽의 모든 숫자의 합과 같은 인덱스로 정의합니다.
 만족하는 인덱스가 없으면 '-1'을 반환합니다. 여러 중심 인덱스가 있는 경우 가장 왼쪽 중심 인덱스를 반환하세요.

 Example 1:
 ~~~~
 Input: nums = [1,7,3,6,5,6]
 Output: 3
 Explanation:
    The sum of the numbers to the left of index 3 (nums[3] = 6) is equal to the sum of numbers to the right of index 3.
    Also, 3 is the first index where this occurs.
 ~~~~
 
 Example 2:
 ~~~~
 Input: nums = [1,2,3]
 Output: -1
 Explanation: There is no index that satisfies the conditions in the problem statement.
 ~~~~
 
 Constraints:
 - The length of nums will be in the range [0, 10000].
 - Each element nums[i] will be an integer in the range [-1000, 1000].
 
 Solution:
 1. 배열 두 개를 준비한다.
    - leftSum: 왼쪽부터 각 인덱스까지의 합계를 더한 배열
    - rightSum: 오른쪽부터 각 인덱스까지의 합계를 더한 배열
 2. leftSum과 rightSum을 동시에 순회하며 같은 값인 원소를 찾으면 그 인덱스를 반환.
 3. 없으면 -1 반환.
 
 Submissions:
 - Runtime: 160 ms, faster than 64.15% of Swift online submissions for Find Pivot Index.
 - Memory Usage: 21.1 MB, less than 61.54% of Swift online submissions for Find Pivot Index.
*/
func pivotIndex(_ nums: [Int]) -> Int {
    guard !nums.isEmpty else {
        return -1
    }
    
    // 왼쪽부터 현재 인덱스까지의 원소 합계 계산
    var leftSum = nums
    for i in 0..<nums.count-1 {
        leftSum[i + 1] += leftSum[i]
    }
    // 맨 앞에 '0'추가 (0번째 인덱스의 좌측 합계를 '0'으로 가정한다.)
    leftSum.insert(0, at: 0)
    
    // 오른쪽 부터 현재 인덱스까지의 원소 합계 계산
    var rightSum = nums
    for i in (0..<nums.count-1).reversed() {
        rightSum[i] += rightSum[i + 1]
    }
    // 맨 뒤에 '0'추가 (마지막 인덱스의 우측 합계를 '0'으로 가정한다.)
    rightSum.append(0)
    
    // 인덱스 왼쪽부터 왼쪽 합계와 오른쪽 합계가 같은 인덱스 찾기
    for i in nums.indices {
        if leftSum[i] == rightSum[i + 1] {
            return i
        }
    }
    
    // 없으면 '-1' 리턴
    return -1
}

// Test Code
extension SolutionTests {
    
    func testPivotIndex_case1() {
        // Given-When-Then (준비-실행-검증)
        
        // Given
        let input = [1,7,3,6,5,6]
        let output = 3
        
        // When
        let result = pivotIndex(input)
        
        // Then
        XCTAssertEqual(result, output)
    }
    
    func testPivotIndex_case2() {
        // Given-When-Then (준비-실행-검증)
        
        // Given
        let input = [1,2,3]
        let output = -1
        
        // When
        let result = pivotIndex(input)
        
        // Then
        XCTAssertEqual(result, output)
    }
    
}
