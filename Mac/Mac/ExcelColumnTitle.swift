//
//  ExcelColumnTitle.swift
//  Mac
//
//  Created by Jinhong Kim on 27/12/2017.
//  Copyright © 2017 test. All rights reserved.
//

import Foundation

// 1  : A
// 2  : B
// 26 : Z
// 27 : AA
// 28 : AB
// 53 : BA

func convertToTitle(_ n: Int) -> String {
    let alphabets: String = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    var title: String = ""
    var value: Int = n
    
    while value > 0 {
        let remain = value % alphabets.count
        let offset = remain == 0 ? alphabets.count : remain
        let idx = alphabets.index(alphabets.startIndex, offsetBy: offset - 1)
        
        title.insert(alphabets[idx], at: title.startIndex)
        
        if value <= alphabets.count {
            break
        }
        
        value /= alphabets.count
        
        if remain == 0 {
            value -= 1
        }
    }
    
    return title
}


func convertToTitle2(_ n: Int) -> String {
    let alphabets: String = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    
    if n == 0 {
        return ""
    }
    
    let remain = (n - 1) % alphabets.count
    let idx = alphabets.index(alphabets.startIndex, offsetBy: remain)

    return convertToTitle2((n - 1) / alphabets.count) + String(alphabets[idx])
}
