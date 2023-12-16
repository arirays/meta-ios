import Foundation

@objc protocol ReservationDataSource {
    @objc optional func reserve(tables: Int) -> Int
    @objc optional var maxReserveTables: Int {get}
}

class ReservationWebsite: ReservationDataSource {
    func reserve(tables: Int) -> Int {
        if tables < 1 {
            return 0
        }
        return tables
    }
}

class ReservationAgent: ReservationDataSource {
    let maxReservableTables: Int = 2
}
