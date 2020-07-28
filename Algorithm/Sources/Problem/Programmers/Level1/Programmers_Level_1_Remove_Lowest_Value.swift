//
//  Programmers_Level_1_Remove_Lowest_Value.swift
//  Algorithm
//
//  Created by JSilver on 2019/12/05.
//  Copyright © 2019 JSilver. All rights reserved.
//

import Foundation
import JSTester

class Programmers_Level_1_Remove_Lowest_Value: Tester<[Int], [Int]> {
    static func run() {
        let problem = Programmers_Level_1_Remove_Lowest_Value()
        problem.inputs = [
            [4, 3, 2, 1],
            [10]
        ]
        
        problem.outputs = [
            [4, 3, 2],
            [-1]
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    override func solve(_ input: [Int]) -> [Int] {
        let arr = input
        
        guard let min = arr.min(), let index = arr.firstIndex(of: min) else { return [-1] }
        var result = arr
        result.remove(at: index)
        return result.isEmpty ? [-1] : result
    }
}
