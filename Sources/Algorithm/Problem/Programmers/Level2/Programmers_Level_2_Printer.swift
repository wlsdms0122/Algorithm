//
//  Programmers_Level_2_Printer.swift
//  Algorithm
//
//  Created by JSilver on 2019/12/20.
//  Copyright © 2019 JSilver. All rights reserved.
//

import Foundation
import JSTester

class Programmers_Level_2_Printer: Tester<([Int], Int), Int> {
    static func run() {
        let problem = Programmers_Level_2_Printer()
        problem.inputs = [
            ([2, 1, 3, 2], 2),
            ([1, 1, 9, 1, 1, 1], 0)
        ]
        
        problem.outputs = [
            1,
            5
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    override func solve(_ input: ([Int], Int)) -> Int {
        let (priorities, location) = input
        
        var priorityQueue = priorities.sorted { $0 > $1 }
        var watingQueue = priorities.enumerated().map { (offset: $0, priority: $1) }
        
        var sequence = 0
        while !watingQueue.isEmpty {
            guard let print = watingQueue.first, let priority = priorityQueue.first else { break }
            watingQueue.removeFirst()
            
            if print.priority == priority {
                sequence += 1
                priorityQueue.removeFirst()
                
                if print.offset == location {
                    return sequence
                }
            } else {
                watingQueue.append(print)
            }
        }
        
        return 0
    }
}
