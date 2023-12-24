import UIKit

// Delegation works with protocols

protocol Employee {
    var name: String { get }
    var daysWorking: Int { get set}
    func executePrimaryDuty()
}

struct Waitress: Employee {
    let name: String
    var daysWorking = 0
    var primaryDutyDelegate: Employee?
    func executePrimaryDuty() {
        // let name = delegate?.name ?? self.name
        let name: String
        if let primaryDutyDelegate = primaryDutyDelegate {
            name = primaryDutyDelegate.name
        } else {
            name = self.name
        }
        print("\(name) brings delicious food to customers.")
    }
}

struct Cook: Employee {
    let name: String
    var daysWorking = 0
    func executePrimaryDuty() {
        print("\(name) cooks delicious food for customers.")
    }
}

var jeniffer = Waitress(name: "Jennifer")
var jane = Waitress(name: "Jane")
let mario = Cook(name: "Mario")

jeniffer.primaryDutyDelegate = mario
jeniffer.executePrimaryDuty()

