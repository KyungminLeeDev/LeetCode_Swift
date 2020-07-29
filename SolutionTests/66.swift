//
//  Created by Kyungmin Lee on 2020/07/29.
//

import Foundation
import XCTest

/**
 #66. Plus One
 
 - Difficulty: Easy
 - Topics: Array
 
 Given a non-empty array of digits representing a non-negative integer, increment one to the integer.

 The digits are stored such that the most significant digit is at the head of the list, and each element in the array contains a single digit.

 You may assume the integer does not contain any leading zero, except the number 0 itself.
 
 음이 아닌 정수를 나타내는 비어 있지 않은 숫자 배열이 주어지면 그 정수를 1 증가시킵니다.

 숫자는 최상위 숫자가 리스트의 헤드에 저장되며 배열의 각 원소는 하나의 숫자입니다.

 숫자 0 자체를 제외하고 정수의 앞에 0이 포함되어 있지 않다고 가정합니다.

 

 Example 1:
 ~~~~
 IInput: [1,2,3]
 Output: [1,2,4]
 Explanation: The array represents the integer 123.
 ~~~~
 
 Example 2:
 ~~~~
 Input: [4,3,2,1]
 Output: [4,3,2,2]
 Explanation: The array represents the integer 4321.
 ~~~~
 
 Solution:
 - 배열의 마지막 원소에 +1을 하고 역순으로 순회하며 자릿수를 올려준다.
 
 Submissions:
 - Runtime: 8 ms, faster than 92.59% of Swift online submissions for Plus One.
 - Memory Usage: 20.8 MB, less than 100.00% of Swift online submissions for Plus One.
*/
func plusOne(_ digits: [Int]) -> [Int] {
    var arr = digits
    
    // 마지막 원소에 1을 더한다.
    arr[digits.count - 1] += 1

    // 역순으로 순회하며 각 원소가 10이상이면 자릿수를 올려준다.
    for i in arr.indices.reversed() {
        if arr[i] > 9 {
            arr[i] = arr[i] % 10
        
            if i == 0 {
                // 맨 앞이라면 맨 앞에 새로운 원소로 추가
                arr.insert(1, at: 0)
            } else {
                arr[i - 1] += 1
            }
        }
    }

    return arr
}


// Test Code
extension SolutionTests {
    
    func testPlusOne_case1() {
        // Given-When-Then (준비-실행-검증)
        
        // Given
        let input = [1,2,3]
        let output = [1,2,4]
        
        // When
        let result = plusOne(input)
        
        // Then
        XCTAssertEqual(result, output)
    }
    
    func testPlusOne_case2() {
        // Given-When-Then (준비-실행-검증)
        
        // Given
        let input = [4,3,2,1]
        let output = [4,3,2,2]
        
        // When
        let result = plusOne(input)
        
        // Then
        XCTAssertEqual(result, output)
    }
    
}
