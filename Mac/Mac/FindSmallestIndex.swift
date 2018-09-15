//
//  FindSmallestIndex.swift
//  Mac
//
//  Created by Jinhong Kim on 03/01/2018.
//  Copyright © 2018 test. All rights reserved.
//

import Foundation


func findMinIndex(_ nums: [Int], start: Int, end: Int) -> Int {
    if start == end {
        return start
    }
    
    if start > end {
        return -1
    }
    
    let mid = (start + end) / 2
    
//    let minLeft = min(nums[start], nums[mid])
//    let minRight = min(nums[mid + 1], nums[end])
//
//    if minLeft < minRight {
//        return findMinIndex(nums, start: start, end: mid)
//    } else {
//        return findMinIndex(nums, start: mid + 1, end: end)
//    }
    
    if nums[mid] > nums[end] {
        return findMinIndex(nums, start: mid + 1, end: end)
    } else {
        return findMinIndex(nums, start: start, end: mid)
    }
}


