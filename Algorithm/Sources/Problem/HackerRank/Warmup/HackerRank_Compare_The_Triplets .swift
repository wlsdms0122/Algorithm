//
//  HackerRank_Compare_The_Triplets .swift
//  Algorithm
//
//  Created by JSilver on 2020/07/23.
//  Copyright © 2020 JSilver. All rights reserved.
//

import JSTester

class HackerRank_Compare_The_Triplets: Tester<([Int], [Int]), [Int]> {
    static func run() {
        let problem = HackerRank_Compare_The_Triplets()
        problem.inputs = [
            ([5, 6, 7], [3, 6, 10])
        ]
        
        problem.outputs = [
            [1, 1]
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    override func solve(_ input: ([Int], [Int])) -> [Int] {
        let a = input.0
        let b = input.1
        
        return (0 ... 2).reduce([0, 0]) {
            guard a[$1] != b[$1] else { return $0 }
            if a[$1] > b[$1] {
                return [$0[0] + 1, $0[1]]
            } else {
                return [$0[0], $0[1] + 1]
            }
        }
    }
}
