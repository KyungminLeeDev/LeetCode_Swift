//
//  Created by Kyungmin Lee on 2020/07/13.
//

import Foundation
import XCTest

/**
 #977. Squares of a Sorted Array
 
 Given an array of integers A sorted in non-decreasing order, return an array of the squares of each number, also in sorted non-decreasing order.
 
 Example 1:
 ~~~~
 Input: [-4,-1,0,3,10]
 Output: [0,1,9,16,100]
 ~~~~
 Example 2:
 ~~~~
 Input: [-7,-3,2,3,11]
 Output: [4,9,9,49,121]
 ~~~~
 
 - note:
    1. 1 <= A.length <= 10000
    2. -10000 <= A[i] <= 10000
    3. A is sorted in non-decreasing order.
*/
func sortedSquares(_ A: [Int]) -> [Int] {
    return A.map{$0 * $0}.sorted()
}


// Test Code
extension SolutionTests {
    
    func testSortedSquares_case1() {
        // Given-When-Then (준비-실행-검증)
        
        // Given
        let input = [-4,-1,0,3,10]
        let output = [0,1,9,16,100]
        
        // When
        let result = sortedSquares(input)
      
        // Then
        XCTAssertEqual(result, output)
    }
    
    func testSortedSquares_case2() {
        // Given-When-Then (준비-실행-검증)
        
        // Given
        let input = [-7,-3,2,3,11]
        let output = [4,9,9,49,121]
          
        // When
        let result = sortedSquares(input)
        
        // Then
        XCTAssertEqual(result, output)
    }
    
}
