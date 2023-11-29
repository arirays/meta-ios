//
//  FlatTabView.swift
//  LittleLemon
//
//  Created by AS on 11/25/23.
//

import SwiftUI

struct FlatTabView: View {
    var body: some View {
        TabView {
            Text("Locations")
                .tabItem {
                    Label("Locations", systemImage: "fork.knife")
                }
            Text("Reservations")
                .tabItem {
                    Label("Reservation", systemImage: "square.and.pencil")
                }
        }
    }
}

#Preview {
    FlatTabView()
}
