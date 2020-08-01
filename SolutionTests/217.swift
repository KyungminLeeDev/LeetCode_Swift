//
//  Created by Kyungmin Lee on 2020/08/01.
//

import Foundation
import XCTest

func containsDuplicate(_ nums: [Int]) -> Bool {
    let numsSet = Set(nums)
            
    return nums.count == numsSet.count ? false : true
}

// Test Code
extension SolutionTests {
    
    func testContainsDuplicate_case1() {
        // Given-When-Then (준비-실행-검증)
        
        // Given
        let input = [1,2,3,1]
        let output = true
        
        // When
        let result = containsDuplicate(input)
        
        // Then
        XCTAssertEqual(result, output)
    }
    
    func testContainsDuplicate_case2() {
        // Given-When-Then (준비-실행-검증)
        
        // Given
        let input = [1,2,3,4]
        let output = false
        
        // When
        let result = containsDuplicate(input)
        
        // Then
        XCTAssertEqual(result, output)
    }
    
    func testContainsDuplicate_case3() {
        // Given-When-Then (준비-실행-검증)
        
        // Given
        let input = [1,1,1,3,3,4,3,2,4,2]
        let output = true
        
        // When
        let result = containsDuplicate(input)
        
        // Then
        XCTAssertEqual(result, output)
    }
    
}

