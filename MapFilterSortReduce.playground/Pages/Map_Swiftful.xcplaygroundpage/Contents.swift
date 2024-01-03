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


var userNames: [String] = allUsers.map { user in
    return user.name
}

print(userNames)
