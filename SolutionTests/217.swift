//
//  Created by Kyungmin Lee on 2020/08/01.
//

import Foundation
import XCTest

/**
 #217. Contains Duplicate
 
 - Difficulty: Easy
 - Topics: Array
 
 Given an array of integers, find if the array contains any duplicates.

 Your function should return true if any value appears at least twice in the array, and it should return false if every element is distinct.
 
 정수 배열이 주어지면 배열에 중복 항목이 있는지 찾으세요.

 당신의 함수는 배열에 값이 두 번 이상 나타나면 true를 반환하고 모든 원소가 고유하면 false를 반환해야합니다.

 Example 1:
 ~~~~
 Input: [1,2,3,1]
 Output: true
 ~~~~
 
 Example 2:
 ~~~~
 Input: [1,2,3,4]
 Output: false
 ~~~~
 
 Example 3:
 ~~~~
 Input: [1,1,1,3,3,4,3,2,4,2]
 Output: true
 ~~~~
 
 Solution:
 - 중복된 원소가 없는 Set의 특성을 활용한다.
 - 배열을 Set으로 형변환해서 배열과 Set의 원소 갯수를 비교해서 같으면 중복된 원소가 없다고 판단한다.
 
 Submissions:
 - Runtime: 156 ms, faster than 84.87% of Swift online submissions for Contains Duplicate.
 - Memory Usage: 21.1 MB, less than 100.00% of Swift online submissions for Contains Duplicate.
*/
func containsDuplicate(_ nums: [Int]) -> Bool {
    let numsSet = Set(nums)
            
    return nums.count == numsSet.count ? false : true
}

// Test Code
extension SolutionTests {
    
    func testContainsDuplicate_case1() {
        // Given-When-Then (준비-실행-검증)
        
        // Given
        let input = [1,2,3,1]
        let output = true
        
        // When
        let result = containsDuplicate(input)
        
        // Then
        XCTAssertEqual(result, output)
    }
    
    func testContainsDuplicate_case2() {
        // Given-When-Then (준비-실행-검증)
        
        // Given
        let input = [1,2,3,4]
        let output = false
        
        // When
        let result = containsDuplicate(input)
        
        // Then
        XCTAssertEqual(result, output)
    }
    
    func testContainsDuplicate_case3() {
        // Given-When-Then (준비-실행-검증)
        
        // Given
        let input = [1,1,1,3,3,4,3,2,4,2]
        let output = true
        
        // When
        let result = containsDuplicate(input)
        
        // Then
        XCTAssertEqual(result, output)
    }
    
}

