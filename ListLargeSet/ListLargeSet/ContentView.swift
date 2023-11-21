//
//  ContentView.swift
//  ListLargeSet
//
//  Created by AS on 11/18/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private var model = Model()
    
    var body: some View {
        VStack {
            List {
                ForEach(model.meals) { item in
                    Text(item.name)
                }
            }
        }
        .padding()
    }
}

struct Item: Identifiable {
    let name: String
    let id = UUID()
}


class Model: ObservableObject {
    
    @Published var meals: [Item] = menuItems()
    
    static func menuItems() -> [Item] {
        return  [
            Item(name: "Lasagna"),
            Item(name: "Fettuccini Alfredo"),
            Item(name: "Spaghetti"),
            Item(name: "Avocado Toast"),
            Item(name: "Tortellini"),
            Item(name: "Pizza")
        ]
    }
}


#Preview {
    ContentView()
}
