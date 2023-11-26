//
//  GestureRecognizer.swift
//  GestureRecognizer
//
//  Created by AS on 11/24/23.
//

import SwiftUI

struct GestureRecognizer: View {
    @State private var flag = false
    
    var body: some View {
        Text("Tap Me")
            .font(.largeTitle)
            .foregroundStyle(.white)
            .padding()
            .background( flag ? Color.green : Color.yellow)
            .onTapGesture {
                flag.toggle()
            }
    }
}

#Preview {
    GestureRecognizer()
}
