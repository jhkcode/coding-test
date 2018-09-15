//
//  ProductOfArray.swift
//  Mac
//
//  Created by Jinhong Kim on 27/12/2017.
//  Copyright © 2017 test. All rights reserved.
//

import Foundation

func productExcept(at: Int, nums: [Int]) -> Int {
    var product: Int = 1
    
    for (idx, val) in nums.enumerated() {
        if idx == at {
            continue
        }
        
        product *= val
    }
    
    return product
}


func productExceptSelf(_ nums: [Int]) -> [Int] {
    var products: [Int] = []
    let allProduct: Int = nums.reduce(1) { $0 * $1 }
    
    for (idx, num) in nums.enumerated() {
        if num == 0 {
            products = Array<Int>(repeating: 0, count: nums.count)
            products[idx] = productExcept(at: idx, nums: nums)
            break
        } else {
            products.append(allProduct / num)
        }
    }
    
    return products
}
