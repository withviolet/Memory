//
//  ContentView.swift
//  Memory
//
//  Created by paintitcolorful on 2022/11/9.
//
// 大量的小视图，是swiftUI的设计范式
import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(faceUp: true)
            CardView()
            CardView()
            CardView() // 在这里设定的初始值，的权限高于在CardView body中的
        }
        .padding(.horizontal)
        .foregroundColor(.red)
    }
}

struct CardView: View {
    @State var faceUp: Bool = false // 卡牌是否面朝上
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if faceUp{
                shape.fill().foregroundColor(.white)
                shape.stroke(lineWidth: 3)
                Text("✈️").font(.largeTitle)
            } else {
                shape.fill()
            }
        }
        .onTapGesture {
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
