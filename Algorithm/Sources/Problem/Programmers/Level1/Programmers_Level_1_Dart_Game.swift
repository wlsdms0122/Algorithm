//
//  Programmers_Level_1_Dart_Game.swift
//  Algorithm
//
//  Created by JSilver on 2019/12/16.
//  Copyright © 2019 JSilver. All rights reserved.
//

import Foundation
import JSTester

class Programmers_Level_1_Dart_Game: Tester<String, Int> {
    static func run() {
        let problem = Programmers_Level_1_Dart_Game()
        problem.inputs = [
            "1S2D*3T",
            "1D2S#10S",
            "1D2S0T",
            "1S*2T*3S",
            "1D#2S*3S",
            "1T2D3D#",
            "1D2S3T*"
        ]
        
        problem.outputs = [
            37,
            9,
            3,
            23,
            5,
            -4,
            59
        ]
        
        print(" 🙏 \(String(describing: self)) is running... ")
        problem.execute()
    }

    enum Bonus: String, CaseIterable {
        case single = "S"
        case double = "D"
        case triple = "T"
        
        var factor: Double {
            switch self {
            case .single:
                return 1.0
                
            case .double:
                return 2.0
                
            case .triple:
                return 3.0
            }
        }
    }
    
    enum Option: String, CaseIterable {
        case star = "*"
        case second = "#"
    }
    
    class ScoreBoard {
        enum DartType {
            case score(Int)
            case bonus(Bonus)
            case option(Option)
        }
        
        // MARK: - property
        private var scores: [Int] = []
        var tokens: [String] = {
            return [
                Bonus.allCases.map { $0.rawValue },
                Option.allCases.map { $0.rawValue }
            ].flatMap { $0 }
        }()
        var score: Int { scores.reduce(0, +) }
        
        // MARK: - private method
        private func get(score: Int) {
            scores.append(score)
        }
        
        private func get(bonus: Bonus) {
            let index = scores.count - 1
            guard index >= 0 else { return }
            
            scores[index] = Int(pow(Double(scores[index]), bonus.factor))
        }
        
        private func get(option: Option) {
            switch option {
            case .star:
                (0 ... 1).map { scores.count - $0 - 1 }
                    .filter { $0 >= 0 }
                    .forEach { scores[$0] *= 2 }
                
            case .second:
                let index = scores.count - 1
                guard index >= 0 else { return }
                
                scores[index] = -scores[index]
            }
        }
        
        // MARK: - public method
        func get(_ type: DartType) {
            switch type {
            case let .score(score):
                get(score: score)
                
            case let .bonus(bonus):
                get(bonus: bonus)
                
            case let .option(option):
                get(option: option)
            }
        }
    }
    
    override func solve(_ input: String) -> Int {
        let dartResult = input
        
        let scoreBoard = ScoreBoard()
        _ = dartResult.reduce("") {
            guard scoreBoard.tokens.contains(String($1)) else { return "\($0)\($1)" }
            
            if let score = Int($0) {
                scoreBoard.get(.score(score))
            }
            
            if let bonus = Bonus(rawValue: String($1)) {
                scoreBoard.get(.bonus(bonus))
                return ""
            }
            
            if let option = Option(rawValue: String($1)) {
                scoreBoard.get(.option(option))
                return ""
            }
            
            return ""
        }
        
        return scoreBoard.score
    }
}
