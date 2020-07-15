//
//  Created by Kyungmin Lee on 2020/07/14.
//

import Foundation
import XCTest


/**
 #1089. Duplicate Zeros
 
 Given a fixed length array arr of integers, duplicate each occurrence of zero, shifting the remaining elements to the right.
 Note that elements beyond the length of the original array are not written.
 Do the above modifications to the input array in place, do not return anything from your function.
 
 Example 1:
 ~~~~
 Input: [1,0,2,3,0,4,5,0]
 Output: null
 Explanation: After calling your function, the input array is modified to: [1,0,0,2,3,0,0,4]
 ~~~~
 Example 2:
 ~~~~
 Input: [1,2,3]
 Output: null
 Explanation: After calling your function, the input array is modified to: [1,2,3]
 ~~~~
 
 - note:
    - 1 <= arr.length <= 10000
    - 0 <= arr[i] <= 9
*/
func duplicateZeros(_ arr: inout [Int]) {
    var result = [Int]()
    
    for n in arr {
        if result.count == arr.count {
            break
        }
        
        if n == 0 {
            result.append(n)
            if result.count == arr.count {
                break
            }
            result.append(n)
        } else {
            result.append(n)
        }
    }
    
    arr = result
}


// Test Code
extension SolutionTests {
    
    func testDuplicateZeros() {
        // Given-When-Then (준비-실행-검증)
        
        // Given
        var inputValue = [[1,0,2,3,0,4,5,0], [1,2,3]]
        let outputValue = [[1,0,0,2,3,0,0,4], [1,2,3]]
        
        // When
        duplicateZeros(&inputValue[0])
        duplicateZeros(&inputValue[1])
        
        // Then
        XCTAssertEqual(inputValue[0], outputValue[0])
        XCTAssertEqual(inputValue[1], outputValue[1])
    }
    
}
