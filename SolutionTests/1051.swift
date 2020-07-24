//
//  Created by Kyungmin Lee on 2020/07/24.
//

import Foundation
import XCTest

/**
 #1051. Height Checker
 
 - Difficulty: Easy
 - Topics: Array
 
 Students are asked to stand in non-decreasing order of heights for an annual photo.
 Return the minimum number of students that must move in order for all students to be standing in non-decreasing order of height.
 Notice that when a group of students is selected they can reorder in any possible way between themselves and the non selected students remain on their seats.
 
 연간 사진을 찍기 위해 학생들은 키가 작은 순서대로 서있도록 요청받았다.
 키가 작은 순서대로 서기 위해 움직여야하는 최소 학생 수를 반환하세요.
 학생들은 가능한 한 어떤 방식으로든 순서를 바꿀 수 있습니다.

 Example 1:
 ~~~~
 Input: heights = [1,1,4,2,1,3]
 Output: 3
 Explanation:
 Current array : [1,1,4,2,1,3]
 Target array  : [1,1,1,2,3,4]
 On index 2 (0-based) we have 4 vs 1 so we have to move this student.
 On index 4 (0-based) we have 1 vs 3 so we have to move this student.
 On index 5 (0-based) we have 3 vs 4 so we have to move this student.
 ~~~~
 Example 2:
 ~~~~
 Input: heights = [5,1,2,3,4]
 Output: 5
 ~~~~
 Example 1:
 ~~~~
 Input: heights = [1,2,3,4,5]
 Output: 0
 ~~~~
 
 Constraints:
 - 1 <= heights.length <= 100
 - 1 <= heights[i] <= 100
 
 Solution:
 - Array.sorted()로 정렬된 배열을 만들고 주어진 배열과 인덱스끼리 비교하여 다른 원소 갯수를 카운트 후 반환한다.
 
 Submissions:
 - Runtime: 12 ms, faster than 97.01% of Swift online submissions for Height Checker.
 - Memory Usage: 21 MB, less than 78.95% of Swift online submissions for Height Checker.
*/
func heightChecker(_ heights: [Int]) -> Int {
    let temp = heights.sorted()
    var count = 0
    
    for i in 0..<heights.count {
        if heights[i] != temp[i] {
            count += 1
        }
    }
    
    return count
}

// Test Code
extension SolutionTests {
    
    func testHeightChecker_case1() {
        // Given-When-Then (준비-실행-검증)
        
        // Given
        let input = [1,1,4,2,1,3]
        let output = 3
        
        // When
        let result = heightChecker(input)
        
        // Then
        XCTAssertEqual(result, output)
    }
    
    func testHeightChecker_case2() {
        // Given-When-Then (준비-실행-검증)
        
        // Given
        let input = [5,1,2,3,4]
        let output = 5
        
        // When
        let result = heightChecker(input)
        
        // Then
        XCTAssertEqual(result, output)
    }
    
    func testHeightChecker_case3() {
        // Given-When-Then (준비-실행-검증)
        
        // Given
        let input = [1,2,3,4,5]
        let output = 0
        
        // When
        let result = heightChecker(input)
        
        // Then
        XCTAssertEqual(result, output)
    }
}
