//
//  GroupAnagram.swift
//  Mac
//
//  Created by Jinhong Kim on 28/12/2017.
//  Copyright © 2017 test. All rights reserved.
//

import Foundation

/*
 For example, given: ["eat", "tea", "tan", "ate", "nat", "bat"],
 Return:
 
 [
 ["ate", "eat","tea"],
 ["nat","tan"],
 ["bat"]
 ]
 */

func groupAnagrams(_ strs: [String]) -> [[String]] {
    var dict: [String : [String]] = [:]
    
    strs.forEach {
        var alphabets: [Character : Int] = [:]
        
        $0.forEach {
            if let count = alphabets[$0] {
                alphabets[$0] = count + 1
            } else {
                alphabets[$0] = 1
            }
        }
        
        
//        let dictKey = alphabets.keys.sorted()
//                        .reduce("") {
//                            $0 + String($1) + String(describing: alphabets[$1])
//                        }
        let dictKey = String($0.sorted())
        
        if let _ = dict[dictKey] {
            dict[dictKey]!.append($0)
        } else {
            dict[dictKey] = [$0]
        }
    }
    
    return dict.keys.sorted().map { dict[$0]! }
}


func groupAnagrams2(_ strs: [String]) -> [[String]] {
    var dict: [String : [String]] = [:]
    
    strs.forEach {
        let key = String($0.sorted())

        if let _ = dict[key] {
            dict[key]!.append($0)
        } else {
            dict[key] = [$0]
        }
    }
    
    return dict.keys.sorted().map { dict[$0]! }
}
