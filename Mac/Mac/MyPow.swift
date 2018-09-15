//
//  MyPow.swift
//  Mac
//
//  Created by Jinhong Kim on 27/12/2017.
//  Copyright © 2017 test. All rights reserved.
//

import Foundation

func myPow(_ x: Double, _ n: Int) -> Double {
    if x > -1.00001, x < -0.99999 {
        return (n % 2 == 0) ? 1 : -1
    }
    
    if x > -0.00001, x < 0.00001 {
        return 0
    }
    
    if x > 0.99999, x < 1.00001 {
        return 1
    }
    
    if n == 0 {
        return 1
    }
    
    if n > 0 {
        return x * myPow(x, n - 1)
    } else {
        return (1 / x) * myPow(x, n + 1)
    }
}
