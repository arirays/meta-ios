//
//  ReservationCalendar.swift
//  ReservationCalendar
//
//  Created by AS on 11/4/23.
//

import SwiftUI

struct ReservationCalendar: View {
    @State private var date = Date()
    @State private var timeSelected = ""
    
    var body: some View {
        Form(content: {
            VStack {
                HStack {
                    DatePicker("Date", selection: $date)
                    Button(action: {print("Do something!")}, label: {
                        Text("Done")
                    })
                }
                Text("Date is \(date.formatted(date: .long, time: .complete)) ")
            }
        })
    }
}

#Preview {
    ReservationCalendar()
}
