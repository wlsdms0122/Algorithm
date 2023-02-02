//
//  Programmers_Level_2_Pass_The_Bridge.swift
//  Algorithm
//
//  Created by JSilver on 2019/12/31.
//  Copyright © 2019 JSilver. All rights reserved.
//

import Foundation
import JSTester

class Programmers_Level_2_Pass_The_Bridge: Tester<(Int, Int, [Int]), Int> {
    static func run() {
        let problem = Programmers_Level_2_Pass_The_Bridge()
        problem.inputs = [
            (2, 10, [7, 4, 5, 6]),
            (100, 100, [10]),
            (100, 100, [10, 10, 10, 10, 10, 10, 10, 10, 10, 10])
        ]
        
        problem.outputs = [
            8,
            101,
            110
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    override func solve(_ input: (Int, Int, [Int])) -> Int {
        let (bridge_length, weight, truck_weights) = input
        
        var bridge: [(weight: Int, endTime: Int)] = []
        var bridgeWeight = weight
        return truck_weights.reduce(0) {
            var seconds = $0
            while true {
                if let endTime = bridge.first?.endTime, endTime == seconds {
                    bridgeWeight += bridge.removeFirst().weight
                }
                
                if bridgeWeight >= $1 {
                    bridgeWeight -= $1
                    bridge.append(($1, seconds + bridge_length))
                    
                    return seconds + 1
                }
                
                seconds += 1
            }
        } + bridge_length
    }
}
