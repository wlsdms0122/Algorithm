//
//  HackerRank_Drawing_Book.swift
//  Algorithm
//
//  Created by JSilver on 2020/07/30.
//  Copyright © 2020 JSilver. All rights reserved.
//

import JSTester

class HackerRank_Drawing_Book: Tester<(Int, Int), Int> {
    static func run() {
        let problem = HackerRank_Drawing_Book()
        problem.inputs = [
            (6, 2),
            (5, 4)
        ]
        
        problem.outputs = [
            1,
            0
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    override func solve(_ input: (Int, Int)) -> Int {
        let (n, p) = input
        let page = { (page: Int) in page / 2 + 1 }
        return min(page(p) - 1, page(n) - page(p))
    }
}
