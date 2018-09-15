//
//  NumberOfIsland.swift
//  Mac
//
//  Created by Jinhong Kim on 28/12/2017.
//  Copyright © 2017 test. All rights reserved.
//

import Foundation


func walkIsland(_ grid: [[Int]], visited: inout [[Int]], row: Int, col: Int) {
    if row < 0 || col < 0 {
        return
    }
    
    if row >= grid.count || col >= grid[0].count {
        return
    }
    
    if grid[row][col] == 1, visited[row][col] == 0 {
        visited[row][col] = 1
        
        walkIsland(grid, visited: &visited, row: row - 1, col: col)
        walkIsland(grid, visited: &visited, row: row, col: col + 1)
        walkIsland(grid, visited: &visited, row: row + 1, col: col)
        walkIsland(grid, visited: &visited, row: row, col: col - 1)
    }
}


func numIslands(_ grid: [[Int]]) -> Int {
    if grid.count == 0 {
        return 0
    }
    
    
    var count: Int = 0
    let emptyRow: [Int] = Array<Int>(repeating: 0, count: grid[0].count)
    var visited: [[Int]] = Array<[Int]>(repeating: emptyRow, count: grid.count)

    for (row, rows) in grid.enumerated() {
        for (col, island) in rows.enumerated() {
            if island == 1 && visited[row][col] == 0 {
                count += 1

                walkIsland(grid, visited: &visited, row: row, col: col)
            }
        }
    }
    
    return count
}
