//
//  ContentView.swift
//  Memory
//
//  Created by paintitcolorful on 2022/11/9.
//
// 大量的小视图，是swiftUI的设计范式
import SwiftUI

struct ContentView: View {
    var emojis = ["🚲", "🚘", "🚀", "🛥", "🚡", "💺", "🎡", "🚅", "🗽", "🚇", "🚨", "🚢"]
    @State var emojiCount = 5
    
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 64))]) {
                    // foreach需要类是唯一的，id: \.self的意思是强制把string本身作为自己的唯一标识
                    ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
                        CardView(content: emoji).aspectRatio(2 / 3, contentMode: .fit)
                        // 在这里设定的faceup初始值，的权限高于在CardView body中的
                    }
                }
            }
            .padding(.horizontal)
            .foregroundColor(.red)
            Spacer()
//            HStack {
//                removeButton
//                Spacer()
//                addButton
//            }
//            .font(.largeTitle)
//            .padding(.horizontal)
        }
    }
    
//    var removeButton: some View {
//        Button {
//            if emojiCount > 1 {
//                emojiCount -= 1
//            }
//        } label: {
//            Image(systemName: "minus.circle")
//        }
//    }
//    
//    var addButton: some View {
//        Button {
//            if emojiCount < emojis.count {
//                emojiCount += 1
//            }
//        } label: {
//            Image(systemName: "plus.circle")
//        }
//    }
    
}

struct CardView: View {
    var content: String
    @State var faceUp: Bool = true // 卡牌是否面朝上
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if faceUp{
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                // stroke 画出来的线侧面会被挡住，但是strokeBorder画出来的线不会
                Text(content).font(.largeTitle)
            } else {
                shape.fill()
            }
        }
        .onTapGesture {
            // 当在这里修改了@ State修饰的变量时，其实是修改了内存里的值，视图知道faceup被修改后，会重新刷新整个视图
            faceUp = !faceUp
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .preferredColorScheme(.light)
    }
}
