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


// Two pieces of Data (requires two arguments)
var orderedUsers: [DatabaseUser] = allUsers.sorted { user1, user2 in
    return user1.order < user2.order
}

var orderedUsers2: [DatabaseUser] = allUsers.sorted { $0.order < $1.order }


print(orderedUsers)


