import UIKit

class SettingUpAccount {
    var isOpened = true
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
    
    func moneyTransfer(
        transferType: String,
        transferAmount: Int,
        bankAccount: inout BankAccount) {
            
        switch transferType {
        case "withdraw":
            if accountType == "credit" {
                bankAccount.creditWithdraw(transferAmount)
            } else if accountType == "debit" {
                bankAccount.debitWithdraw(transferAmount)
            }
        case "deposit":
            if accountType == "credit" {
                bankAccount.creditDeposit(transferAmount)
            } else if accountType == "debit" {
                bankAccount.debitDeposit(transferAmount)
            }
        default:
            break
        }
    }
    
    
    func checkBalance(bankAccount: BankAccount) {
        switch accountType {
        case "credit":
            print(bankAccount.creditBalanceInfo)
        case "debit":
            print(bankAccount.debitBalanceInfo)
        default:
            break
        }
    }
    
    
}


struct BankAccount {
    var debitBalance = 0
    var creditBalance = 0
    let creditLimit = 100
    
    var debitBalanceInfo: String {
        return "Debit balance: $\(debitBalance)"
    }
    
    var availableCredit: Int {
        return creditLimit + creditBalance
    }
    
    var creditBalanceInfo: String {
        return "Available credit: $\(availableCredit)"
    }
    
    mutating func debitDeposit(_ amount: Int) {
        debitBalance = amount + debitBalance
        print("Deposited $ \(amount). \(debitBalanceInfo)")
        
    }
    
    mutating func creditDeposit(_ amount:Int) {
        creditBalance = amount + creditBalance
        print("Credit $ \(amount). \(creditBalanceInfo)")
        if creditBalance == 0 {
            print("Paid off credit balance")
        } else if creditBalance > 0 {
            print("Overpaid credit balance")
        }
    }
    mutating func debitWithdraw(_ amount: Int) {
        if amount > debitBalance {
            print("Insufficient fund to withdraw $\(amount).\(debitBalanceInfo)")
        } else {
            debitBalance -= amount
            print("Debit withdraw: $\(amount).\(debitBalanceInfo)")
        }
    }
    mutating func creditWithdraw(_ amount: Int) {
        if amount > availableCredit {
            print("Insufficient credit to withdraw $\(amount).\(creditBalanceInfo)")
        } else {
            creditBalance -= amount
            print("Credit withdraw: $\(amount). \(creditBalanceInfo)")
        }
    }
}

let virtualBankSystem = SettingUpAccount()
virtualBankSystem.welcomeCustomer()

repeat {
    virtualBankSystem.onBoardCustomerAccountOpening()
    let numberPadKey = Int.random(in: 1...3)
    virtualBankSystem.userSelectedAccount(numberPadKey: numberPadKey)
} while virtualBankSystem.accountType == ""


let transferAmount = 50
print("Transfer amount: $ \(transferAmount)")
var bankAccount = BankAccount()

repeat {
    print("What would you like to do?")
    print("1. Check bank account")
    print("2. Withdraw money")
    print("3. Deposit money")
    print("4. Close the system")
    let option = Int.random(in: 1...5)
    print("Selected option: \(option).")
    
    switch option {
    case 1:
        virtualBankSystem.checkBalance(bankAccount: bankAccount)
    case 2:
        virtualBankSystem.moneyTransfer(transferType: "withdraw", transferAmount: transferAmount, bankAccount: &bankAccount)
    case 3:
        virtualBankSystem.moneyTransfer(transferType: "deposit", transferAmount: transferAmount, bankAccount: &bankAccount)
    case 4:
        virtualBankSystem.isOpened = false
        print("The system is closed")
    default:
        break
    }
} while virtualBankSystem.isOpened
