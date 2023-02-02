//
//  HackerRank_Diagonal_Difference .swift
//  Algorithm
//
//  Created by JSilver on 2020/07/23.
//  Copyright © 2020 JSilver. All rights reserved.
//

import JSTester

class HackerRank_Diagonal_Difference: Tester<[[Int]], Int> {
    static func run() {
        let problem = HackerRank_Diagonal_Difference()
        problem.inputs = [
            [
                [11, 2, 4],
                [4, 5, 6],
                [10, 8, -12]
            ]
        ]
        
        problem.outputs = [
            15
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    override func solve(_ input: [[Int]]) -> Int {
        let arr = input
        
        let result = (0 ..< arr.count).reduce((0, 0)) { (result: (Int, Int), index: Int) in (result.0 + arr[index][index], result.1 + arr[index][arr.count - index - 1]) }
        
        return abs(result.0 - result.1)
    }
}
