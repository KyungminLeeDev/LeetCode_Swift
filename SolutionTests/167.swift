//
//  Created by Kyungmin Lee on 2020/08/02.
//

import Foundation
import XCTest

/**
 #167. Two Sum II - Input array is sorted
 
 - Difficulty: Easy
 - Topics: Array
 
 Given an array of integers that is already sorted in ascending order, find two numbers such that they add up to a specific target number.

 The function twoSum should return indices of the two numbers such that they add up to the target, where index1 must be less than index2.
 
 이미 오름차순으로 정렬 된 정수 배열이 주어지면, 더해서 'target'이 되는 두 수를 찾으세요.

 twoSum 함수는 두 수의 index를 반환하며, index1이 index2보다 작아야합니다.
 
 Note:
 - Your returned answers (both index1 and index2) are not zero-based.
 - You may assume that each input would have exactly one solution and you may not use the same element twice.

 Example 1:
 ~~~~
 Input: numbers = [2,7,11,15], target = 9
 Output: [1,2]
 Explanation: The sum of 2 and 7 is 9. Therefore index1 = 1, index2 = 2.
 ~~~~
 
 Solution:
 - 배열의 양쪽 끝에서부터 가운데로 범위를 좁혀가며 검사한다.
 - 합이 타겟보다 크면 오른쪽 인덱스를 줄이고, 작으면 왼쪽 인덱스를 늘린다.
 - 합이 타겟과 일치하면 이 문제의 인덱스는 1부터 시작이므로 +1 해서 반환한다.
 
 Submissions:
 - Runtime: 32 ms, faster than 88.70% of Swift online submissions for Two Sum II - Input array is sorted.
 - Memory Usage: 21.1 MB, less than 100.00% of Swift online submissions for Two Sum II - Input array is sorted.
*/
func twoSum2(_ numbers: [Int], _ target: Int) -> [Int] {
    var left = 0
    var right = numbers.count - 1
    
    while (left < right) {
        let sum = numbers[left] + numbers[right]
        
        if sum == target {
            return [left + 1, right + 1]
        } else if sum > target {
            right -= 1
        } else {
            left += 1
        }
    }
    
    return []
}

// Test Code
extension SolutionTests {
    
    func testTwoSum2() {
        // Given-When-Then (준비-실행-검증)
        
        // Given
        let numbers = [2,7,11,15], target = 9
        let output = [1,2]
        
        // When
        let result = twoSum2(numbers, target)
        
        // Then
        XCTAssertEqual(result, output)
    }

}
