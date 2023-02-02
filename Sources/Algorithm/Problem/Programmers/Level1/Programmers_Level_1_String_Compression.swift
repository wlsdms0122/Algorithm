//
//  Programmers_Level_2.swift
//  Algorithm
//
//  Created by JSilver on 2019/11/23.
//  Copyright © 2019 JSilver. All rights reserved.
//

import Foundation
import JSTester

class Programmers_Level_1_String_Compression: Tester<String, Int> {
    static func run() {
        let problem = Programmers_Level_1_String_Compression()
        problem.inputs = [
            "aabbaccc",
            "ababcdcdababcdcd",
            "abcabcdede",
            "abcabcabcabcdededededede",
            "xababcdcdababcdcd"
        ]
        
        problem.outputs = [
            7,
            9,
            8,
            14,
            17
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }
    
    private func compression(strings: [String]) -> String {
        guard strings.count > 0 else { return "" }
        
        func makeCompressedString(_ previous: String, count: Int, result: String) -> String {
            return "\(result)\(count > 1 ? "\(count)" : "")\(previous)"
        }
        
        let result = strings.reduce((strings[0], 0, "")) {
            $0.0 == $1 ?
                ($1, $0.1 + 1, $0.2) :
                ($1, 1, makeCompressedString($0.0, count: $0.1, result:$0.2))
        }
        
        return makeCompressedString(result.0, count: result.1, result: result.2)
    }
    
    override func solve(_ input: String) -> Int {
        let s = input
        
        return (1 ... s.count).map { compression(strings: s.split(length: $0)).count }.min() ?? 0
    }
}

extension String {
    func split(length: Int) -> [String] {
        var index = 0
        
        var result: [String] = []
        while index < self.count {
            let startIndex = self.index(self.startIndex, offsetBy: index)
            let endIndex = self.index(startIndex, offsetBy: length, limitedBy: self.endIndex) ?? self.endIndex
            
            result.append(String(self[startIndex ..< endIndex]))
            index += length
        }
        
        return result
    }
}
