//
//  TabView.swift
//  Navigation exercise
//
//  Created by AS on 11/15/23.
//

import SwiftUI

struct MyTabView: View {
    
    var body: some View {
        VStack {
            TabView {
                Text("This is the Share View")
                    .font(.title)
                    .tabItem { Label("Share", systemImage: "square.and.arrow.up") }
                
                Text("This is the Trash View")
                    .font(.title)
                    .tabItem { Label("Trash", systemImage: "trash") }
            }
        }
    }
}

#Preview {
    MyTabView()
}
