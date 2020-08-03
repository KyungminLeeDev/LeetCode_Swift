//
//  Created by Kyungmin Lee on 2020/08/03.
//

import Foundation
import XCTest

/**
 #268. Missing Number
 
 - Difficulty: Easy
 - Topics: Array
 
 Given an array containing n distinct numbers taken from 0, 1, 2, ..., n, find the one that is missing from the array.
 
 0, 1, 2, ..., n에서 가져온 n 개의 고유 숫자가 포함 된 배열이 주어지면, 배열에서 누락 된 숫자를 찾으세요.
 

 Example 1:
 ~~~~
 Input: [3,0,1]
 Output: 2
 ~~~~
 
 Example 2:
 ~~~~
 Input: [9,6,4,2,3,5,7,0,1]
 Output: 8
 ~~~~
 
 Note:
 - Your algorithm should run in linear runtime complexity. Could you implement it using only constant extra space complexity?
 
 Solution:
 1. nums 배열보다 크기가 1 더 큰 bool형 배열 'check'를 만든다.
 2. nums 배열을 순회하며 원소값을 check의 인덱스로 찾아가 true로 변경한다.
 3. check의 원소중 false의 인덱스를 찾아 반환한다.
 
 Submissions:
 - Runtime: 152 ms, faster than 76.71% of Swift online submissions for Missing Number.
 - Memory Usage: 20.9 MB, less than 96.30% of Swift online submissions for Missing Number.
*/
func missingNumber(_ nums: [Int]) -> Int {
    var check = Array(repeating: false, count: nums.count + 1)
    
    for n in nums {
        check[n] = true
    }
    
    if let index = check.firstIndex(of: false) {
        return index
    }
    
    return 0
}

// Test Code
extension SolutionTests {
    
    func testMissingNumber_case1() {
        // Given-When-Then (준비-실행-검증)
        
        // Given
        let input = [3,0,1]
        let output = 2
        
        // When
        let result = missingNumber(input)
        
        // Then
        XCTAssertEqual(result, output)
    }
    
    func testMissingNumber_case2() {
        // Given-When-Then (준비-실행-검증)
        
        // Given
        let input = [9,6,4,2,3,5,7,0,1]
        let output = 8
        
        // When
        let result = missingNumber(input)
        
        // Then
        XCTAssertEqual(result, output)
    }
    
  
}
