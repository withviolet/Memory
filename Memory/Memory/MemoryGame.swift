//
//  MemoryGame.swift
//  Memory
//
//  Created by paintitcolorful on 2022/11/10.
//

import Foundation

struct MemoryGame<CardContent> where CardContent: Equatable {
    
    private(set) var cards: Array<Card>
    
    private var indexOfCardOnlyFaceUp: Int?
    
    mutating func choose(_ card: Card) {
//        guard let chosenIndex = index(of: card) else { return }
        if let chosenIndex = cards.firstIndex(where: { $0.id == card.id }),
            !cards[chosenIndex].isMatched,
            !cards[chosenIndex].isFaceUp {
            
            if let protencialCardIndex = indexOfCardOnlyFaceUp {
                if cards[protencialCardIndex].content == cards[chosenIndex].content {
                    cards[protencialCardIndex].isMatched = true
                    cards[chosenIndex].isMatched = true
                }
                indexOfCardOnlyFaceUp = nil
            } else {
                for index in cards.indices {
                    cards[index].isFaceUp = false
                }
                indexOfCardOnlyFaceUp = chosenIndex
            }
            cards[chosenIndex].isFaceUp.toggle()
        }
    }
    
    
    // firstIndex where 可以替代这个函数
//    func index(of card: Card)-> Int? {
//        for index in 0 ..< cards.count {
//            if cards[index].id == card.id {
//                return index
//            }
//        }
//        return nil
//    }
    
    init(numbersOfPairsOfCards: Int, createCardContent: (Int) -> CardContent ) {
        
        cards = Array<Card>()
        
        for pairIndex in 0..<numbersOfPairsOfCards {
            let content = createCardContent(pairIndex)
            cards.append(Card(content: content, id: pairIndex * 2))
            cards.append(Card(content: content, id: pairIndex * 2 + 1))
        }
        
    }
    
    struct Card: Identifiable{
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent
        var id: Int
    }
    
}
