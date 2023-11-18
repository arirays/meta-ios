//
//  ParentView.swift
//  ParentChildView
//
//  Created by AS on 11/9/23.
//

import SwiftUI

struct ParentView: View {
    var body: some View {
        HStack {
            Rectangle()
                .fill(.yellow)
                .frame(width: 50, height: 50)
            Text("Rectangle One")
                .foregroundStyle(.white)
                .padding(20)
                .background(.yellow)
            
            Rectangle()
                .fill(.blue)
                .frame(width: 100, height: 50)
        }
    }
}

#Preview {
    ParentView()
}
