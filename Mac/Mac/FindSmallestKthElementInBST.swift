//
//  FindSmallestKthElementInBST.swift
//  Mac
//
//  Created by Jinhong Kim on 04/01/2018.
//  Copyright © 2018 test. All rights reserved.
//

import Foundation

class TreeNode {
    
    var value: Int
    var left: TreeNode?
    var right: TreeNode?
    
    init(_ val: Int) {
        self.value = val
        self.left = nil
        self.right = nil
    }
    
}

var k: Int = 0

func dfs(_ node: TreeNode?, order: Int) -> TreeNode? {
    guard let n = node else {
        return nil
    }
    
    if let foundNode = dfs(n.left, order: order) {
        return foundNode
    }
    
    k += 1
    
    if order == k {
        return n
    }
    
    if let foundNode = dfs(n.right, order: order) {
        return foundNode
    }
    
    return nil
}
