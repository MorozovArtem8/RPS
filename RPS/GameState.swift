//
//  GameState.swift
//  RPS
//
//  Created by Artem Morozov on 26.10.2023.
//

import Foundation

enum GameState{
    case start
    case win
    case lose
    case draw
    
    var statusString: String {
        switch self {
        case .start:
            return "Сделайте ход"
        case .win:
            return "Поздравляю вы победили!"
        case .lose:
            return "Вы проиграли!"
        case .draw:
            return "Ничья попробуйте еще раз"
        }
    }
}
