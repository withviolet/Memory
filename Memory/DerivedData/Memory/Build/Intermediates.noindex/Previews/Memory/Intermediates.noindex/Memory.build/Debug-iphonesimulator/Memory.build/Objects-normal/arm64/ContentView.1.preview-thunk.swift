@_private(sourceFile: "ContentView.swift") import Memory
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/paintitcolorful/StudySpace/Memory/Memory/Memory/ContentView.swift", line: 83)
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .preferredColorScheme(.light)
    
#sourceLocation()
    }
}

extension CardView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/paintitcolorful/StudySpace/Memory/Memory/Memory/ContentView.swift", line: 63)
        ZStack {
            let shape = RoundedRectangle(cornerRadius: __designTimeInteger("#6801.[2].[2].property.[0].[0].arg[0].value.[0].value.arg[0].value", fallback: 20))
            if faceUp{
                shape.fill().foregroundColor(.white)
                shape.stroke(lineWidth: __designTimeInteger("#6801.[2].[2].property.[0].[0].arg[0].value.[1].[0].[1].modifier[0].arg[0].value", fallback: 3))
                Text(content).font(.largeTitle)
            } else {
                shape.fill()
            }
        }
        .onTapGesture {
            // 当在这里修改了@ State修饰的变量时，其实是修改了内存里的值，视图知道faceup被修改后，会重新刷新整个视图
            faceUp = !faceUp
        }
        
    
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: addButton) private var __preview__addButton: some View {
        #sourceLocation(file: "/Users/paintitcolorful/StudySpace/Memory/Memory/Memory/ContentView.swift", line: 47)
        Button {
            if emojiCount < emojis.count {
                emojiCount += __designTimeInteger("#6801.[1].[4].property.[0].[0].arg[0].value.[0].[0].[0].[0]", fallback: 1)
            }
        } label: {
            Image(systemName: __designTimeString("#6801.[1].[4].property.[0].[0].arg[1].value.[0].arg[0].value", fallback: "plus.circle"))
        }
    
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: removeButton) private var __preview__removeButton: some View {
        #sourceLocation(file: "/Users/paintitcolorful/StudySpace/Memory/Memory/Memory/ContentView.swift", line: 37)
        Button {
            if emojiCount > 1 {
                emojiCount -= __designTimeInteger("#6801.[1].[3].property.[0].[0].arg[0].value.[0].[0].[0].[0]", fallback: 1)
            }
        } label: {
            Image(systemName: __designTimeString("#6801.[1].[3].property.[0].[0].arg[1].value.[0].arg[0].value", fallback: "minus.circle"))
        }
    
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/paintitcolorful/StudySpace/Memory/Memory/Memory/ContentView.swift", line: 15)
        VStack {
            HStack {
                // foreach需要类是唯一的，id: \.self的意思是强制把string本身作为自己的唯一标识
                ForEach(emojis[__designTimeInteger("#6801.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].value.[0]", fallback: 0)..<emojiCount], id: \.self) { emoji in
                    CardView(content: emoji) // 在这里设定的faceup初始值，的权限高于在CardView body中的
                }
            }
            .padding(.horizontal)
            .foregroundColor(.red)
            Spacer()
            HStack {
                removeButton
                Spacer()
                addButton
            }
            .font(.largeTitle)
            .foregroundColor(.red)
            .padding(.horizontal)
        }
    
#sourceLocation()
    }
}

import struct Memory.ContentView
import struct Memory.CardView
import struct Memory.ContentView_Previews
