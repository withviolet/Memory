@_private(sourceFile: "ContentView.swift") import Memory
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/paintitcolorful/StudySpace/Memory/Memory/Memory/ContentView.swift", line: 59)
        ContentView(viewModel: EmojiMemoryGame())
//            .preferredColorScheme(.dark)
//        ContentView(viewModel: EmojiMemoryGame.emojis)
//            .preferredColorScheme(.light)
    
#sourceLocation()
    }
}

extension CardView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/paintitcolorful/StudySpace/Memory/Memory/Memory/ContentView.swift", line: 42)
        ZStack {
            let shape = RoundedRectangle(cornerRadius: __designTimeInteger("#1792.[2].[1].property.[0].[0].arg[0].value.[0].value.arg[0].value", fallback: 20))
            if card.isFaceUp{
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: __designTimeInteger("#1792.[2].[1].property.[0].[0].arg[0].value.[1].[0].[1].modifier[0].arg[0].value", fallback: 3))
                // stroke 画出来的线侧面会被挡住，但是strokeBorder画出来的线不会
                Text(card.content).font(.largeTitle)
            } else {
                shape.fill()
            }
        }
        
    
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/paintitcolorful/StudySpace/Memory/Memory/Memory/ContentView.swift", line: 17)
        ScrollView {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: __designTimeInteger("#1792.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.arg[0].value", fallback: 64)))]) {
                // foreach需要类是唯一的，id: \.self的意思是强制把string本身作为自己的唯一标识
                ForEach(viewModel.cards) { card in
                    CardView(card: card)
                        .aspectRatio(__designTimeInteger("#1792.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[0].arg[0].value.[0]", fallback: 2)/__designTimeInteger("#1792.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[0].arg[0].value.[1]", fallback: 3), contentMode: .fit)
                        .onTapGesture {
                            viewModel.choose(card)
                        }
                }
            }
            
            .padding(.horizontal)
            .foregroundColor(.red)
            Spacer()
            
        }
    
#sourceLocation()
    }
}

import struct Memory.ContentView
import struct Memory.CardView
import struct Memory.ContentView_Previews
