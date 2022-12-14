//
//  EmojiMemoryGame.swift
//  Memory
//
//  Created by paintitcolorful on 2022/11/10.
//

// viewModel

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    
    static let emojis = ["🚲", "🚘", "🚀", "🛥", "🚡", "💺", "🎡", "🚅", "🗽", "🚇", "🚨", "🚢"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numbersOfPairsOfCards: 4) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    @Published private(set) var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - intents
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}
