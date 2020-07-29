//
//  HackerRank_Sock_Merchant.swift
//  Algorithm
//
//  Created by JSilver on 2020/07/29.
//  Copyright © 2020 JSilver. All rights reserved.
//

import JSTester

class HackerRank_Sock_Merchant: Tester<(Int, [Int]), Int> {
    static func run() {
        let problem = HackerRank_Sock_Merchant()
        problem.inputs = [
            (9, [10, 20, 20, 10, 10, 30, 50, 10, 20])
        ]
        
        problem.outputs = [
            3
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    override func solve(_ input: (Int, [Int])) -> Int {
        let (n, ar) = input
        
        var socks = Array(repeating: 0, count: 100)
        ar.forEach { socks[$0 - 1] += 1 }
        
        return socks.reduce(0) { $0 + $1 / 2 }
    }
    
}
