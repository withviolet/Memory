//
//  ContentView.swift
//  Memory
//
//  Created by paintitcolorful on 2022/11/9.
//
// 大量的小视图，是swiftUI的设计范式
import SwiftUI

struct ContentView: View {
    //    var emojis = ["🚲", "🚘", "🚀", "🛥", "🚡", "💺", "🎡", "🚅", "🗽", "🚇", "🚨", "🚢"]
    //    @State var emojiCount = 5
    
    @ObservedObject var viewModel: EmojiMemoryGame
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 64))]) {
                // foreach需要类是唯一的，id: \.self的意思是强制把string本身作为自己的唯一标识
                ForEach(viewModel.cards) { card in
                    CardView(card: card)
                        .aspectRatio(2/3, contentMode: .fit)
                        .onTapGesture {
                            viewModel.choose(card)
                        }
                }
            }
            
            .padding(.horizontal)
            .foregroundColor(.red)
            Spacer()
            
        }
    }
    
}

struct CardView: View {
    let card: MemoryGame<String>.Card
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if card.isFaceUp{
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                // stroke 画出来的线侧面会被挡住，但是strokeBorder画出来的线不会
                Text(card.content).font(.largeTitle)
            } else {
                shape.fill()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: EmojiMemoryGame())
//            .preferredColorScheme(.dark)
//        ContentView(viewModel: EmojiMemoryGame.emojis)
//            .preferredColorScheme(.light)
    }
}
