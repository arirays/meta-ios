//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by AS on 11/13/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            CapsuleText(text: "First")
                .foregroundStyle(.white)
            CapsuleText(text: "Second")
                .foregroundStyle(.yellow)

        }
        .padding()
    }
}



struct CapsuleText: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
            .background(.blue)
            .clipShape(.capsule)
    }
}

#Preview {
    ContentView()
}
