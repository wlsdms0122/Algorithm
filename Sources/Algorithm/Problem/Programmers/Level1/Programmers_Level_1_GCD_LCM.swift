//
//  Programmers_Level_1_GCD_LCM.swift
//  Algorithm
//
//  Created by JSilver on 2019/12/06.
//  Copyright © 2019 JSilver. All rights reserved.
//

import Foundation
import JSTester

class Programmers_Level_1_GCD_LCM: Tester<(Int, Int), [Int]> {
    static func run() {
        let problem = Programmers_Level_1_GCD_LCM()
        problem.inputs = [
            (3, 12),
            (2, 5)
        ]
        
        problem.outputs = [
            [3, 12],
            [1, 10]
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    private func gcd(_ a: Int, _ b: Int) -> Int {
        guard b > 0 else { return a }
        return gcd(b, a % b)
    }
    
    override func solve(_ input: (Int, Int)) -> [Int] {
        let (n, m) = input
        
        let g = gcd(n, m)
        return [g, n * m / g]
    }
}
