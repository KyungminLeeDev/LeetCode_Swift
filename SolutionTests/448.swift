//
//  Created by Kyungmin Lee on 2020/07/26.
//

import Foundation
import XCTest

/**
 #448. Find All Numbers Disappeared in an Array
 
 - Difficulty: Easy
 - Topics: Array
 
 Given an array of integers where 1 ≤ a[i] ≤ n (n = size of array), some elements appear twice and others appear once.
 Find all the elements of [1, n] inclusive that do not appear in this array.
 Could you do it without extra space and in O(n) runtime? You may assume the returned list does not count as extra space.
 
 1 ≤[i] ≤ n (n = 배열의 크기) 범위의 정수 배열이 주어진다, 어떤 원소는 두 번, 다른 원소는 한 번 나타납니다.
 이 배열에 나타나지 않는 원소를 찾으세요.
 여분의 공간 없이 O(n) 런타임으로 할 수 있나요? 리턴 목록이 추가 공간으로 계산되지 않는다고 가정합니다.

 Example 1:
 ~~~~
 Input: [4,3,2,7,8,2,3,1]
 Output: [5,6]
 ~~~~
 
 Solution:
 1. 배열의 범위는 1~배열의 크기 이므로 1부터 배열의 크기 까지를 원소로 갔는 배열 'result'를 만든다.
 2. 'nums' 배열의 원소를 'result' 배열의 인덱스로 참조하여 '-1'로 표시한다.
 3. 'result'배열의 모든 '-1'원소를 제거한다.
    - removeAll(whele:)의 시간 복잡도: O(n)
 
 Submissions:
 - Runtime: 572 ms, faster than 42.64% of Swift online submissions for Find All Numbers Disappeared in an Array.
 - Memory Usage: 23.7 MB, less than 57.14% of Swift online submissions for Find All Numbers Disappeared in an Array.
*/
func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
    guard !nums.isEmpty else {
        return []
    }

    var result = Array(1...nums.count)
    
    for n in nums {
        result[n - 1] = -1
    }
    
    result.removeAll{$0 == -1}
    
    return result
}

// Test Code
extension SolutionTests {
    
    func tesFindDisappearedNumbers() {
        // Given-When-Then (준비-실행-검증)
        
        // Given
        let input = [4,3,2,7,8,2,3,1]
        let output = [5, 6]
        
        // When
        let result = findDisappearedNumbers(input)
        
        // Then
        XCTAssertEqual(result, output)
    }
    
}

