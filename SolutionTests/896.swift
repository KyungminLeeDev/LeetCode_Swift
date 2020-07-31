//
//  Created by Kyungmin Lee on 2020/07/31.
//

import Foundation
import XCTest

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
