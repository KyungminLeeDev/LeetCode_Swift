//
//  Created by Kyungmin Lee on 2020/07/25.
//

import Foundation
import XCTest

/**
 #414. Third Maximum Number
 
 - Difficulty: Easy
 - Topics: Array
 
 Given a non-empty array of integers, return the third maximum number in this array. If it does not exist, return the maximum number. The time complexity must be in O(n).
 
 비어 있지 않은 정수 배열이 주어지면, 이 배열에서 세 번째로 큰 수를 반환하세요. 이 값이 없으면 최댓값 반환하십시오. 시간 복잡성은 O(n)이어야 합니다.

 Example 1:
 ~~~~
 Input: [3, 2, 1]
 Output: 1
 Explanation: The third maximum is 1.
 ~~~~
 Example 2:
 ~~~~
 Input: [1, 2]
 Output: 2
 Explanation: The third maximum does not exist, so the maximum (2) is returned instead.
 ~~~~
 Example 3:
 ~~~~
 Input: [2, 2, 3, 1]
 Output: 1
 Explanation:
    Note that the third maximum here means the third maximum distinct number.
    Both numbers with value 2 are both considered as second maximum.
 ~~~~
 
 Solution:
 1. 최댓값을 3개까지 저장하는 max 배열을 만든다.
 2. nums 배열을 순회하며 원소가 max 배열에 없고 max 배열의 가장 작은 원소보다 크면 max 배열에 넣는다.
 3. max 배열 내부에서는 원소가 오름차순이 되도록 한다.
 
 Submissions:
 - Runtime: 36 ms, faster than 90.23% of Swift online submissions for Third Maximum Number.
 - Memory Usage: 21.2 MB, less than 69.57% of Swift online submissions for Third Maximum Number.
*/
func thirdMax(_ nums: [Int]) -> Int {
    var max = [Int.min, Int.min, Int.min]

    for n in nums {
        if n > max[0] && !max.contains(n) {
            max[0] = n
        
            if max[0] > max[1] {
                max.swapAt(0, 1)
            
                if max[1] > max[2] {
                    max.swapAt(1, 2)
                }
            }
        }
    }

    if max[0] == Int.min {
        return max[2]
    }

    return max[0]
}



// Test Code
extension SolutionTests {
    
    func testThirdMax_case1() {
        // Given-When-Then (준비-실행-검증)
        
        // Given
        let input = [3,2,1]
        let output = 1
        
        // When
        let result = thirdMax(input)
        
        // Then
        XCTAssertEqual(result, output)
    }
    
    func testThirdMax_case2() {
        // Given-When-Then (준비-실행-검증)
        
        // Given
        let input = [1,2]
        let output = 2
        
        // When
        let result = thirdMax(input)
        
        // Then
        XCTAssertEqual(result, output)
    }
    
    func testThirdMax_case3() {
        // Given-When-Then (준비-실행-검증)
        
        // Given
        let input = [2,2,3,1]
        let output = 1
        
        // When
        let result = thirdMax(input)
        
        // Then
        XCTAssertEqual(result, output)
    }
}
