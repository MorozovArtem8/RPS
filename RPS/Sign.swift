//
//  Sign.swift
//  RPS
//
//  Created by Artem Morozov on 26.10.2023.
//

import Foundation

func randomSign() -> Sign {
    let sign = Int.random(in: 0...2)
    if sign == 0{
        return .rock
    }else if sign == 1{
        return .paper
    }else {
        return .scissors
    }
}

enum Sign{
    case rock
    case paper
    case scissors
    
    var emoji: String {
        switch self {
        case .rock:
            return "✊"
        case .paper:
            return "🖐️"
        case .scissors:
            return "✌️"
        }
    }
    func comparisonSign(inputSing: Sign) -> GameState{
        switch inputSing {
        case .rock:
            if self == .rock{
                return .draw
            }else if self ==  .paper{
                return .win
            }else{
                return .lose
            }
        case .paper:
            if self == .rock{
                return .lose
            }else if self ==  .paper{
                return .draw
            }else{
                return .win
            }
        case .scissors:
            if self == .rock{
                return .win
            }else if self ==  .paper{
                return .lose
            }else{
                return .draw
            }
            
        }
    }
        
    
}
