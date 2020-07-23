//
//  Created by Kyungmin Lee on 2020/07/23.
//

import Foundation
import XCTest

/**
 #905. Sort Array By Parity
 
 - Difficulty: Easy
 - Topics: Array
 
 Given an array A of non-negative integers, return an array consisting of all the even elements of A, followed by all the odd elements of A.
 You may return any answer array that satisfies this condition.

 음수가 아닌 정수로 구성된 배열 A가 주어지면 A의 모든 짝수 원소와 A의 모든 홀수 원소로 구성된 배열을 반환합니다.
 이 조건을 만족하는 어떤 배열이라도 반환 할 수 있습니다.

 Example 1:
 ~~~~
 Input: [3,1,2,4]
 Output: [2,4,3,1]
 The outputs [4,2,3,1], [2,4,1,3], and [4,2,1,3] would also be accepted.
 ~~~~
 
 Note:
 - 1 <= A.length <= 5000
 - 0 <= A[i] <= 5000
 
 Solution 1:
 - filter로 양수 배열, 음수 배열로 배열을 분리한 뒤 더한다.
 
 Submissions:
 - Runtime: 108 ms, faster than 24.80% of Swift online submissions for Sort Array By Parity.
 - Memory Usage: 21.5 MB, less than 52.94% of Swift online submissions for Sort Array By Parity.
*/
func sortArrayByParity(_ A: [Int]) -> [Int] {
    
    return A.filter{$0 & 1 == 0} + A.filter{$0 & 1 == 1}
}

/**
 #905. Sort Array By Parity
 
 Solution 2:
 - 배열을 순회하며 양수를 만날때마다 odd 인덱스의 원소와 스왑한다.
 
 Submissions:
 - Runtime: 72 ms, faster than 88.40% of Swift online submissions for Sort Array By Parity.
 - Memory Usage: 21.3 MB, less than 66.67% of Swift online submissions for Sort Array By Parity.
*/
func sortArrayByParity2(_ A: [Int]) -> [Int] {
    var result = A
    var odd = 0
    
    for i in 0..<A.count {
        if result[i] & 1 == 0 {
            result.swapAt(i, odd)
            odd += 1
        }
    }
    
    return result
}

// Test Code
extension SolutionTests {
    
    func testSortArrayByParity() {
        // Given-When-Then (준비-실행-검증)
        
        // Given
        let input = [3,1,2,4]
        let output = [2,4,3,1]
        
        // When
        let result = sortArrayByParity(input)
        
        // Then
        XCTAssertEqual(result, output)
    }
    
    func testSortArrayByParity2() {
        // Given-When-Then (준비-실행-검증)
        
        // Given
        let input = [3,1,2,4]
        let output = [2,4,3,1]
        
        // When
        let result = sortArrayByParity2(input)
        
        // Then
        XCTAssertEqual(result, output)
    }
    
}
