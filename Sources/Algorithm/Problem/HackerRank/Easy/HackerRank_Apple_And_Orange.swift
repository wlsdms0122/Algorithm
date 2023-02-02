//
//  HackerRank_Apple_And_Orange.swift
//  Algorithm
//
//  Created by JSilver on 2020/07/26.
//  Copyright © 2020 JSilver. All rights reserved.
//

import JSTester
import Foundation

class HackerRank_Apple_And_Orange: Tester<(Int, Int, Int, Int, [Int], [Int]), [Int]> {
    static func run() {
        let problem = HackerRank_Apple_And_Orange()
        problem.inputs = [
            (7, 11, 5, 15, [-2, 2, 1], [5, -6])
        ]
        
        problem.outputs = [
            [1, 1]
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    private func treeLocation(_ location: Int, distanceOf fruits: [Int], countsIn homeRange: ClosedRange<Int>) -> Int {
        return fruits.map { location + $0 }
            .filter { homeRange.contains($0) }
            .count
    }
    
    override func solve(_ input: (Int, Int, Int, Int, [Int], [Int])) -> [Int] {
        let (s, t, a, b, apples, oranges) = input
        
        return [
            treeLocation(a, distanceOf: apples, countsIn: (s ... t)),
            treeLocation(b, distanceOf: oranges, countsIn: (s ... t))
        ]
    }
}
