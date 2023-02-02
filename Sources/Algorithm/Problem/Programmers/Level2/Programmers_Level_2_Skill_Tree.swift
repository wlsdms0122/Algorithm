//
//  Programmers_Level_2_Skill_Tree.swift
//  Algorithm
//
//  Created by JSilver on 2019/12/27.
//  Copyright © 2019 JSilver. All rights reserved.
//

import Foundation
import JSTester

class Programmers_Level_2_Skill_Tree: Tester<(String, [String]), Int> {
    static func run() {
        let problem = Programmers_Level_2_Skill_Tree()
        problem.inputs = [
            ("CBD", ["BACDE", "CBADF", "AECB", "BDA"])
        ]
        
        problem.outputs = [
            2
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    override func solve(_ input: (String, [String])) -> Int {
        let (skill, skill_trees) = input
        
        return skill_trees.filter { skill.starts(with: $0.filter { skill.contains($0) }) }.count
    }
}
