//
//  ContentView.swift
//  LittleLemon
//
//  Created by AS on 11/21/23.
//

import SwiftUI

struct ContentView: View {
    @State private var offsetValue: CGSize = .zero
    
    var body: some View {
        VStack {
            Image("LittleLemonLogo")
                .offset(x:offsetValue.width,
                        y:offsetValue.height)
                .gesture(
                    DragGesture()
                        .onChanged({ gesture in
                            offsetValue = gesture.translation
                        })
                )
                .imageScale(.large)
                .foregroundStyle(.tint)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
