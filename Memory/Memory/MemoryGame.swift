//
//  MemoryGame.swift
//  Memory
//
//  Created by paintitcolorful on 2022/11/10.
//

import Foundation

struct MemoryGame<CardContent> {
    
    private(set) var cards: Array<Card>
    
    mutating func choose(_ card: Card) {
        let chosenIndex = index(of: card)
        cards[chosenIndex]
    }
    
    init(numbersOfPairsOfCards: Int, createCardContent: (Int) -> CardContent ) {
        
        cards = Array<Card>()
        
        for pairIndex in 0..<numbersOfPairsOfCards {
            let content = createCardContent(pairIndex)
            cards.append(Card(content: content, id: pairIndex * 2))
            cards.append(Card(content: content, id: pairIndex * 2 + 1))
        }
        
    }
    
    struct Card: Identifiable{
        var isFaceUp: Bool = true
        var isMatched: Bool = false
        var content: CardContent
        var id: Int
    }
    
}
