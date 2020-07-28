//
//  Programmers_Level_2_Feature.swift
//  Algorithm
//
//  Created by JSilver on 2019/12/17.
//  Copyright © 2019 JSilver. All rights reserved.
//

import Foundation
import JSTester

class Programmers_Level_2_Feature: Tester<([Int], [Int]), [Int]> {
    static func run() {
        let problem = Programmers_Level_2_Feature()
        problem.inputs = [
            ([93, 30, 55], [1, 30, 5]),
            ([5, 5, 5], [21, 25, 20]),
            ([40, 93, 30, 55, 60, 65], [60, 1, 30, 5 , 10, 7]),
            ([93, 30, 55, 60, 40, 65], [1, 30, 5 , 10, 60, 7]),
            ([99], [1]),
            ([93, 60, 70], [2, 10, 50]),
            (Array(repeating: 99, count: 100), Array(repeating: 1, count: 100)),
            ([5, 5, 5], [20, 20, 20]),
            ([1, 3, 5], [98, 97, 95]),
            ([1, 3, 5], [99, 97, 95]),
            ([0, 0, 0], [100, 99, 100])
        ]
        
        problem.outputs = [
            [2, 1],
            [3],
            [1, 2, 3],
            [2, 4],
            [1],
            [3],
            [100],
            [3],
            [3],
            [3],
            [1, 2]
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    override func solve(_ input: ([Int], [Int])) -> [Int] {
        let (progresses, speeds) = input
        
        var deployees: [Int] = []
        _ = (0 ..< progresses.count).reduce(0) {
            let progress = progresses[$1] + $0 * speeds[$1]
            let time = Int(ceil(Double(max(100 - progress, 0)) / Double(speeds[$1])))
            time > 0 ? deployees.append(1) : (deployees[deployees.count - 1] += 1)
            
            return $0 + time
        }
        
        return deployees
    }
}
