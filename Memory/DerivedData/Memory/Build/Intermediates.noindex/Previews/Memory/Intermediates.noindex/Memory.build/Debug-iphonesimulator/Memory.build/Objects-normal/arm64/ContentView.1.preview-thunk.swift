@_private(sourceFile: "ContentView.swift") import Memory
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/paintitcolorful/StudySpace/Memory/Memory/Memory/ContentView.swift", line: 24)
        ContentView()
    
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/paintitcolorful/StudySpace/Memory/Memory/Memory/ContentView.swift", line: 12)
        ZStack {
            RoundedRectangle(cornerRadius: __designTimeInteger("#6801.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: 20))
                .stroke(lineWidth: __designTimeInteger("#6801.[1].[0].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value", fallback: 3))
            Text(__designTimeString("#6801.[1].[0].property.[0].[0].arg[0].value.[1].arg[0].value", fallback: "H"))
        }
        .padding(.horizontal)
        .foregroundColor(.red)
    
#sourceLocation()
    }
}

import struct Memory.ContentView
import struct Memory.ContentView_Previews
