//
//  MoveZeros.swift
//  Mac
//
//  Created by Jinhong Kim on 1/4/18.
//  Copyright © 2018 test. All rights reserved.
//

import Foundation


func moveZerosWithOrder(_ nums: inout [Int]) {
    var loopIndex: Int = 0
    var swapIndex: Int = 0
    
    while swapIndex < nums.count - 1 {
        if nums[swapIndex] == 0 {
            break
        }
        
        swapIndex += 1
    }
    
    loopIndex = swapIndex + 1
    
    while loopIndex < nums.count {
        if nums[loopIndex] != 0 {
            nums[swapIndex] = nums[loopIndex]
            nums[loopIndex] = 0
            
            swapIndex += 1
        }
        
        loopIndex += 1
    }
}
