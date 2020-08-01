//
//  Created by Kyungmin Lee on 2020/08/01.
//

import Foundation
import XCTest

func containsDuplicate(_ nums: [Int]) -> Bool {
    let numsSet = Set(nums)
            
    return nums.count == numsSet.count ? false : true
}
