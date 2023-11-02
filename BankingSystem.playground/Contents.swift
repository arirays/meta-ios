import UIKit

class SettingUpAcccount {
    
    var accountType = ""
    var input = 0
    
    func welcomeCustomer() {
        print("Welcome to your virtual bank system.")
    }
    
    func onBoardCustomerAccountOpening() {
        print("What kind of account would you like to open?")
        print("1. Debit account")
        print("2. Credit account")
    }
    
    func userSelectedAccount(numberPadKey: Int) {
        print("The selected option is \(numberPadKey).")
        switch numberPadKey {
        case 1:
            accountType = "debit"
        case 2:
            accountType = "credit"
        default:
            print("Invalid input \(numberPadKey)")
            return
        }
        print("You have opened a \(accountType) account.")
    }
}

let virtualBankSystem = SettingUpAcccount()
SettingUpAcccount().welcomeCustomer()

repeat {
    virtualBankSystem.onBoardCustomerAccountOpening()
    let numberPadKey = Int.random(in: 1...3)
    virtualBankSystem.userSelectedAccount(numberPadKey: numberPadKey)
} while virtualBankSystem.accountType == ""
