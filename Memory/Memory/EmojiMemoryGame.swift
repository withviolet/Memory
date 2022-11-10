//
//  EmojiMemoryGame.swift
//  Memory
//
//  Created by paintitcolorful on 2022/11/10.
//

// viewModel

import SwiftUI

class EmojiMemoryGame {
    
    static let emojis = ["🚲", "🚘", "🚀", "🛥", "🚡", "💺", "🎡", "🚅", "🗽", "🚇", "🚨", "🚢"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numbersOfPairsOfCards: 4) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    private(set) var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
//    foo () {
//        let x = emojis[0] // error ,如果要在方法中访问emojis，得写上 EmojiMemoryGame.emojis,
//    }
    
}
