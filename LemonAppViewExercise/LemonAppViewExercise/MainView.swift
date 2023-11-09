//
//  MainView.swift
//  LemonAppViewExercise
//
//  Created by AS on 11/2/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ZStack {
            Color.green.opacity(0.5).ignoresSafeArea()
            HStack(spacing: 8) {
                Text("Demo")
                    .scaledToFit()
                    .frame(width: 100, height: 100, alignment: .center)
                VStack(spacing: 10) {
                    Text("Little Lemon")
                        .font(.title)
                    Text("Tomato Tortellini, Bottarga and Carbonara")
                        .font(.title3)
                        .multilineTextAlignment(.center)
                }
                
            }
            
        }
    }
}

#Preview {
    MainView()
}
