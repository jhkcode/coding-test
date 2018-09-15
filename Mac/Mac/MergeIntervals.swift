//
//  MergeIntervals.swift
//  Mac
//
//  Created by Jinhong Kim on 29/12/2017.
//  Copyright © 2017 test. All rights reserved.
//

import Foundation


//Given [1,3],[2,6],[8,10],[15,18],
//return [1,6],[8,10],[15,18].

/**
 * Definition for an interval.
 * public class Interval {
 *   public var start: Int
 *   public var end: Int
 *   public init(_ start: Int, _ end: Int) {
 *     self.start = start
 *     self.end = end
 *   }
 * }
 */

class Interval: CustomStringConvertible {
    var start: Int
    var end: Int
    
    var description: String {
        return "\(start)-\(end)"
    }
    
    init(_ start: Int, _ end: Int) {
        self.start = start
        self.end = end
    }
}


func mergeInterval(_ first: Interval, _ second: Interval) -> Bool {
    if first.end < second.start {
        return false
    }
    
    first.end = max(first.end, second.end)
    
    return true
}


func merge(_ intervals: [Interval]) -> [Interval] {
    if intervals.count == 0 {
        return []
    }
    
    let sortedIntervals: [Interval] = intervals.sorted(by: { (a, b) -> Bool in
        return a.start < b.start
    })
    
    var mergedIntervals: [Interval] = [sortedIntervals[0]]
    var prevInterval = sortedIntervals[0]
    
    for idx in 1..<sortedIntervals.count {
        if mergeInterval(prevInterval, sortedIntervals[idx]) == false {
            prevInterval = sortedIntervals[idx]
            mergedIntervals.append(prevInterval)
        }
    }
    
    return mergedIntervals
}

