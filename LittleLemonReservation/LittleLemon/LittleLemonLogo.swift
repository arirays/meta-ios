//
//  LittleLemonLogo.swift
//  LittleLemon
//
//  Created by AS on 11/25/23.
//

import SwiftUI

struct LittleLemonLogo: View {
    @State var customerName: String = ""
    
    var body: some View {
        Image("LittleLemonLogo")
        Form {
            TextField("Type Your Name",
                      text: $customerName) { status in
                print(status)
            }
            .onSubmit {
                print("submitted")
            }
            .onChange(of: customerName) { newValue in
                print(newValue)
            }
        }
    }
}

#Preview {
    LittleLemonLogo()
}
