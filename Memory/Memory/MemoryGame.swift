//
//  MemoryGame.swift
//  Memory
//
//  Created by paintitcolorful on 2022/11/10.
//

import Foundation

struct MemoryGame<CardContent> {
    
    var cards: Array<Card>
    
    func choose(_ card: Card) {
        
    }
    
    init(numbersOfPairsOfCards: Int, createCardContent: (Int) -> CardContent ) {
        
        var cards = Array<Card>()
        
        for pairIndex in 0..<numbersOfPairsOfCards {
            let content = createCardContent(pairIndex)
            cards.append(Card(content: content))
        }
        self.cards = cards
    }
    
    struct Card {
        var isFaceUp: Bool = true
        var isMatched: Bool = false
        var content: CardContent
    }
    
}
