@_private(sourceFile: "ContentView.swift") import Memory
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/paintitcolorful/StudySpace/Memory/Memory/Memory/ContentView.swift", line: 46)
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .preferredColorScheme(.light)
    
#sourceLocation()
    }
}

extension CardView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/paintitcolorful/StudySpace/Memory/Memory/Memory/ContentView.swift", line: 27)
        ZStack {
            let shape = RoundedRectangle(cornerRadius: __designTimeInteger("#6801.[2].[1].property.[0].[0].arg[0].value.[0].value.arg[0].value", fallback: 20))
            if faceUp{
                shape.fill().foregroundColor(.white)
                shape.stroke(lineWidth: __designTimeInteger("#6801.[2].[1].property.[0].[0].arg[0].value.[1].[0].[1].modifier[0].arg[0].value", fallback: 3))
                Text(__designTimeString("#6801.[2].[1].property.[0].[0].arg[0].value.[1].[0].[2].arg[0].value", fallback: "✈️")).font(.largeTitle)
            } else {
                shape.fill()
            }
        }
        .onTapGesture {
            faceUp = !faceUp
        }
        
    
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/paintitcolorful/StudySpace/Memory/Memory/Memory/ContentView.swift", line: 12)
        HStack {
            CardView(faceUp: __designTimeBoolean("#6801.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: true))
            CardView()
            CardView()
            CardView() // 在这里设定的初始值，的权限高于在CardView body中的
        }
        .padding(.horizontal)
        .foregroundColor(.red)
    
#sourceLocation()
    }
}

import struct Memory.ContentView
import struct Memory.CardView
import struct Memory.ContentView_Previews
