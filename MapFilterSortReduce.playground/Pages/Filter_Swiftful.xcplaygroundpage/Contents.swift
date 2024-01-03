import Foundation

// From Swiftful thinking

struct DatabaseUser {
    let name: String
    let isPremium: Bool
    let order: Int
}


var allUsers: [DatabaseUser] = [
    DatabaseUser(name: "Nick", isPremium: true, order: 4),
    DatabaseUser(name: "Emily", isPremium: false, order: 1),
    DatabaseUser(name: "Samantha", isPremium: true, order: 3),
    DatabaseUser(name: "Joe", isPremium: true, order: 100),
    DatabaseUser(name: "Chris", isPremium: false, order: 2)
]

// Filter

//using for loop
/*
 var allPremiumUsers: [DatabaseUser] = []
 
 for user in allUsers {
    if user.isPremium {
        allPremiumUsers.append(user)
    }
}
 */

// long version
/*var allPremiumUsers: [DatabaseUser] = allUsers.filter { user in
    if user.isPremium {
        return true
    }
    return false
}
*/

// shorter version
//var allPremiumUsers: [DatabaseUser] = allUsers.filter { user in
//return user.isPremium
//}

// shorthand version
var allPremiumUsers: [DatabaseUser] = allUsers.filter { $0.isPremium }



print(allPremiumUsers)

