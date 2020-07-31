//
//  Created by Kyungmin Lee on 2020/07/31.
//

import Foundation
import XCTest

/**
 #896. Monotonic Array
 
 - Difficulty: Easy
 - Topics: Array
 
 An array is monotonic if it is either monotone increasing or monotone decreasing.

 An array A is monotone increasing if for all i <= j, A[i] <= A[j].
 An array A is monotone decreasing if for all i <= j, A[i] >= A[j].

 Return true if and only if the given array A is monotonic.
 
 배열이 모노톤 증가 또는 모노톤 감소이면 '모노토닉'입니다.

 배열 A가 i <= j, A[i] <= A[j] 를 만족하면 모노톤 증가입니다.
 배열 A가 i <= j, A[i] >= A[j] 인 경우 모노톤 감소입니다.

 주어진 배열 A가 '모노토닉'인 경우에만 true를 반환합니다.

 Example 1:
 ~~~~
 Input: [1,2,2,3]
 Output: true
 ~~~~
 
 Example 2:
 ~~~~
 Input: [6,5,4,4]
 Output: true
 ~~~~
 
 Note:
 - 1 <= A.length <= 50000
 - -100000 <= A[i] <= 100000
 
 Solution:
 - 배열을 순회하며 증가, 감소 하는 경우를 동시에 체크한다.
 - 증가할때는 감소되는 경우가 있다면 false를 기억한다.
 - 감소할때는 증가되는 경우가 있다면 false를 기억한다.
 - 만약 둘다 false 라면 바로 false 반환한다.
 - 배열 순회가 끝나면 true 반환한다.
 
 Submissions:
 - Runtime: 504 ms, faster than 100.00% of Swift online submissions for Monotonic Array.
 - Memory Usage: 21.2 MB, less than 85.71% of Swift online submissions for Monotonic Array.
*/
func isMonotonic(_ A: [Int]) -> Bool {
    var up = true
    var down = true
    
    for i in 0..<(A.count - 1) {
        if up && A[i] > A[i + 1] {
            up = false
        } else if down && A[i] < A[i + 1] {
            down = false
        }
        
        // 둘다 false면 바로 false 리턴
        if !up && !down {
            return false
        }
    }
    
    return true
}

// Test Code
extension SolutionTests {
    
    func testIsMonotonic_case1() {
        // Given-When-Then (준비-실행-검증)
        
        // Given
        let input = [1,2,2,3]
        let output = true
        
        // When
        let result = isMonotonic(input)
        
        // Then
        XCTAssertEqual(result, output)
    }
    
    func testIsMonotonic_case2() {
        // Given-When-Then (준비-실행-검증)
        
        // Given
        let input = [6,5,4,4]
        let output = true
        
        // When
        let result = isMonotonic(input)
        
        // Then
        XCTAssertEqual(result, output)
    }
    
    func testIsMonotonic_case3() {
        // Given-When-Then (준비-실행-검증)
        
        // Given
        let input = [1,3,2]
        let output = false
        
        // When
        let result = isMonotonic(input)
        
        // Then
        XCTAssertEqual(result, output)
    }
    
    func testIsMonotonic_case4() {
        // Given-When-Then (준비-실행-검증)
        
        // Given
        let input = [1,2,4,5]
        let output = true
        
        // When
        let result = isMonotonic(input)
        
        // Then
        XCTAssertEqual(result, output)
    }
    
    func testIsMonotonic_case5() {
        // Given-When-Then (준비-실행-검증)
        
        // Given
        let input = [1,1,1]
        let output = true
        
        // When
        let result = isMonotonic(input)
        
        // Then
        XCTAssertEqual(result, output)
    }
    
}
