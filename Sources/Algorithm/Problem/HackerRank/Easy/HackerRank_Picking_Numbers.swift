//
//  HackerRank_Picking_Numbers.swift
//  Algorithm
//
//  Created by JSilver on 2020/08/05.
//  Copyright © 2020 JSilver. All rights reserved.
//

import JSTester

class HackerRank_Picking_Numbers: Tester<[Int], Int> {
    static func run() {
        let problem = HackerRank_Picking_Numbers()
        problem.inputs = [
            [4, 6, 5, 3, 3, 1],
            [1, 2, 2, 3, 1, 2]
        ]
        
        problem.outputs = [
            3,
            5
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    override func solve(_ input: [Int]) -> Int {
        let a = input
        
        let sortedArray = a.sorted()
        var maxCount = 1
        
        var pivot = 0
        var min = 0
        
        for i in (1..<sortedArray.count) {
            guard sortedArray[i] - sortedArray[pivot] > 1 else { continue }
            
            maxCount = max(maxCount, i - min)
            pivot = i
            min = pivot
        }
        maxCount = max(maxCount, sortedArray.count - min)
        
        return maxCount
    }
}
