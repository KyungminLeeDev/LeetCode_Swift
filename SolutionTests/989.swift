//
//  Created by Kyungmin Lee on 2020/07/30.
//

import Foundation
import XCTest

/**
 #989. Add to Array-Form of Integer
 
 - Difficulty: Easy
 - Topics: Array
 
 For a non-negative integer X, the array-form of X is an array of its digits in left to right order.  For example, if X = 1231, then the array form is [1,2,3,1].

 Given the array-form A of a non-negative integer X, return the array-form of the integer X+K.
 
 음수가 아닌 정수 X의 경우, X의 배열 형식은 왼쪽에서 오른쪽으로 자릿수의 배열입니다. 예를 들어, 'X = 1231'이면 배열 형식은 '[1,2,3,1]'입니다.

 음이 아닌 정수 X의 배열 형식 A가 주어지면 정수 'X + K'의 배열 형식을 반환합니다.
 
 Example 1:
 ~~~~
 Input: A = [1,2,0,0], K = 34
 Output: [1,2,3,4]
 Explanation: 1200 + 34 = 1234
 ~~~~
 
 Example 2:
 ~~~~
 Input: A = [2,7,4], K = 181
 Output: [4,5,5]
 Explanation: 274 + 181 = 455
 ~~~~
 
 Example 3:
 ~~~~
 Input: A = [2,1,5], K = 806
 Output: [1,0,2,1]
 Explanation: 215 + 806 = 1021
 ~~~~
 
 Example 4:
 ~~~~
 Input: A = [9,9,9,9,9,9,9,9,9,9], K = 1
 Output: [1,0,0,0,0,0,0,0,0,0,0]
 Explanation: 9999999999 + 1 = 10000000000
 ~~~~
 
 Note：
 - 1 <= A.length <= 10000
 - 0 <= A[i] <= 9
 - 0 <= K <= 10000
 - If A.length > 1, then A[0] != 0
 
 Solution:
 1. K를 Int 배열로 형변환 한다.
 2. A와 K를 더 큰배열, 작은 배열로 구분한다.
 3. 작은 배열을 순회하여 큰배열의 각 원소와 더한다.
 4. 큰 배열을 역순으로 순회하며 자릿수를 올려준다.
 
 Submissions:
 - Runtime: 268 ms, faster than 80.00% of Swift online submissions for Add to Array-Form of Integer.
 - Memory Usage: 21.6 MB, less than 100.00% of Swift online submissions for Add to Array-Form of Integer.
*/
func addToArrayForm(_ A: [Int], _ K: Int) -> [Int] {
    let arrK = Array(String(K)).map{$0.wholeNumberValue!}
    var answer: Array<Int>
    var add: Array<Int>

    // 더 큰 배열을 answer로 한다.
    answer = (A.count >= arrK.count) ? A : arrK

    if A.count >= arrK.count {
        answer = A
        add = arrK
    } else {
        answer = arrK
        add = A
    }

    let offset = answer.count - add.count

    for i in add.indices {
        answer[i + offset] += add[i]
    }

    // 역순으로 순회하며 각 원소가 10이상이면 자릿수를 올려준다.
    for i in answer.indices.reversed() {
        if answer[i] > 9 {
            answer[i] = answer[i] % 10

            if i == 0 {
                // 맨 앞이라면 맨 앞에 새로운 원소로 추가
                answer.insert(1, at: 0)
            } else {
                answer[i - 1] += 1
            }
        }
    }

    return answer
}


// Test Code
extension SolutionTests {
    
    func testAddToArrayForm_case1() {
        // Given-When-Then (준비-실행-검증)
        
        // Given
        let A = [1,2,0,0], K = 34
        let output = [1,2,3,4]
        
        // When
        let result = addToArrayForm(A, K)
        
        // Then
        XCTAssertEqual(result, output)
    }
    
    func testAddToArrayForm_case2() {
        // Given-When-Then (준비-실행-검증)
        
        // Given
        let A = [2,7,4], K = 181
        let output = [4,5,5]
        
        // When
        let result = addToArrayForm(A, K)
        
        // Then
        XCTAssertEqual(result, output)
    }
    
    func testAddToArrayForm_case3() {
        // Given-When-Then (준비-실행-검증)
        
        // Given
        let A = [2,1,5], K = 806
        let output = [1,0,2,1]
        
        // When
        let result = addToArrayForm(A, K)
        
        // Then
        XCTAssertEqual(result, output)
    }
    
    func testAddToArrayForm_case4() {
        // Given-When-Then (준비-실행-검증)
        
        // Given
        let A = [9,9,9,9,9,9,9,9,9,9], K = 1
        let output = [1,0,0,0,0,0,0,0,0,0,0]
        
        // When
        let result = addToArrayForm(A, K)
        
        // Then
        XCTAssertEqual(result, output)
    }
}
