//
//  HackerRank_Kangaroo.swift
//  Algorithm
//
//  Created by JSilver on 2020/07/26.
//  Copyright © 2020 JSilver. All rights reserved.
//

import JSTester
import Foundation

class HackerRank_Kangaroo: Tester<(Int, Int, Int, Int), String> {
    static func run() {
        let problem = HackerRank_Kangaroo()
        problem.inputs = [
            (0, 2, 5, 3),
            (0, 3, 4, 2)
        ]
        
        problem.outputs = [
            "NO",
            "YES"
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    override func solve(_ input: (Int, Int, Int, Int)) -> String {
        let (x1, v1, x2, v2) = input
        
        var firstKangaroo = x1
        var secondKangaroo = x2
        
        var distance = secondKangaroo - firstKangaroo
        while distance > 0 {
            firstKangaroo += v1
            secondKangaroo += v2
            
            let newDistance = secondKangaroo - firstKangaroo
            guard newDistance < distance else { return "NO" }
            distance = newDistance
        }
        
        return distance == 0 ? "YES" : "NO"
    }
}
