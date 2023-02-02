//
//  HackerRank_Plus_Minus .swift
//  Algorithm
//
//  Created by JSilver on 2020/07/23.
//  Copyright © 2020 JSilver. All rights reserved.
//

import JSTester

class HackerRank_Plus_Minus: Tester<([Int], [Int]), Int> {
    static func run() {
        let problem = HackerRank_Plus_Minus()
        problem.inputs = [
            ([2, 4], [16, 32, 96]),
            ([100, 99, 98, 97, 96, 95, 94, 93, 92, 91], [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
        ]
        
        problem.outputs = [
            3,
            0
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    override func solve(_ input: ([Int], [Int])) -> Int {
        let a = input.0
        let b = input.1
        
        guard let min = a.sorted().first, let max = b.sorted().first, min < max else { return 0 }
        
        return (min ... max).reduce(0) { count, value in
            guard a.reduce(true, {
                guard $0 else { return false }
                return value % $1 == 0
            }),
            b.reduce(true, {
                guard $0 else { return false }
                return $1 % value == 0
            }) else {
                return count
            }
            return count + 1
        }
    }
}
