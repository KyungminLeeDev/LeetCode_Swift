//
//  Created by Kyungmin Lee on 2020/07/28.
//

import Foundation
import XCTest

func dominantIndex(_ nums: [Int]) -> Int {
    guard nums.count != 1 else {
        return 0
    }
    
    let max = nums.max()!
    
    for n in nums {
        if n == max {
            continue
        }
        
        if n * 2 > max {
            return -1
        }
    }
    
    return nums.firstIndex(of: max)!
}

// Test Code
extension SolutionTests {
    
    func testDominantIndex_case1() {
        // Given-When-Then (준비-실행-검증)
        
        // Given
        let input = [3,6,1,0]
        let output = 1
        
        // When
        let result = dominantIndex(input)
        
        // Then
        XCTAssertEqual(result, output)
    }
    
    func testDominantIndex_case2() {
        // Given-When-Then (준비-실행-검증)
        
        // Given
        let input = [1,2,3,4]
        let output = -1
        
        // When
        let result = dominantIndex(input)
        
        // Then
        XCTAssertEqual(result, output)
    }
    
}

