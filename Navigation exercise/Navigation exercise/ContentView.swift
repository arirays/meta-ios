//
//  ContentView.swift
//  Navigation exercise
//
//  Created by AS on 11/15/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            
                VStack {
                    Text("Exercise 1")
                    NavigationLink {
                        EmptyView()
                    } label: {
                        Text("Do Something")
                    }

            }
                .navigationTitle("Little Lemon")
        }
    }
}

#Preview {
    ContentView()
}
