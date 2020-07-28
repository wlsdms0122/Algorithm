//
//  Programmers_Level_2_Joystick.swift
//  Algorithm
//
//  Created by JSilver on 2020/01/06.
//  Copyright © 2020 JSilver. All rights reserved.
//

import Foundation
import JSTester

class Programmers_Level_2_Joystick: Tester<String, Int> {
    static func run() {
        let problem = Programmers_Level_2_Joystick()
        problem.inputs = [
            "JEROEN",
            "JAN",
            "BBAABB"
        ]
        
        problem.outputs = [
            56,
            23,
            8
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    func next(string: String, at index: Int) -> (distance: Int, index: Int)? {
        var index = index
        for distance in (1 ..< string.count) {
            index = (index + 1) % string.count
            if string[string.index(string.startIndex, offsetBy: index)] != "A" {
                return (distance, index)
            }
        }
        
        return nil
    }
    
    func previous(string: String, at index: Int) -> (distance: Int, index: Int)? {
        var index = index
        for distance in (1 ..< string.count) {
            index -= 1
            if index < 0 {
                index = string.count - 1
            }
            
            if string[string.index(string.startIndex, offsetBy: index)] != "A" {
                return (distance, index)
            }
        }
        
        return nil
    }
    
    override func solve(_ input: String) -> Int {
        let name = input
        
        guard let base = Character("A").asciiValue,
            let max = Character("Z").asciiValue else { return 0 }
        
        let changeCount = name.reduce(0) {
            guard let target = $1.asciiValue else { return $0 }
            return $0 + Int(min(target - base, max - target + 1))
        }
        
        var moveCount = 0
        
        var temp = name
        temp.replaceSubrange(temp.startIndex ... temp.startIndex, with: "A")
        var index = 0
        while true {
            guard let right = next(string: temp, at: index), let left = previous(string: temp, at: index) else { break }
            
            if right.distance <= left.distance {
                index = right.index
                moveCount += right.distance
            } else {
                index = left.index
                moveCount += left.distance
            }
            
            let replaceIndex = temp.index(temp.startIndex, offsetBy: index)
            temp.replaceSubrange(replaceIndex ... replaceIndex, with: "A")
        }
        
        return changeCount + moveCount
    }
}
