import UIKit

// FILTER
let paymentArray = [99.54, 44.31, 89.0, 6.5, 21.24, 63.7, 59.1]

let largePayments = paymentArray.filter { $0 > 60.0 }
print(largePayments)

// MAP

let filteredPaymentsStrings = largePayments.map { String($0) }

print(filteredPaymentsStrings)

//REDUCE

let finalListString = filteredPaymentsStrings.reduce("") { $0 + "," + $1 }
print(finalListString)
