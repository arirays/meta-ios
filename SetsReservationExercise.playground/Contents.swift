import UIKit

let reservationsInPerson: Set = ["000-345-3441", "000-345-3442"]

let reservationsOverPhone: Set = ["808-999-9999", "808-000-0000"]

let reservationsOverInternet: Set = ["000-345-6223", "000-345-7223"]

let inPersoAndOverPhone = reservationsInPerson.union(reservationsOverPhone)
print(inPersoAndOverPhone)

var allPhoneNumbers = inPersoAndOverPhone.union(reservationsOverInternet)
print(allPhoneNumbers)


var confirmationCodes: Set = ["LL3450", "LL3451", "LL3452", "LL3453", "LL3454"]

print("\(allPhoneNumbers.count) and \(confirmationCodes.count)")

confirmationCodes.insert("LL3455")
print(confirmationCodes)

allPhoneNumbers.remove("808-000-0000")
confirmationCodes.remove("LL3450")
print("\(allPhoneNumbers.count) and \(confirmationCodes.count)")
