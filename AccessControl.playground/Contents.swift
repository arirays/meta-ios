import UIKit


// RULE OF THUMB:
// We want everything to be as private as possible!
// bc this then restricts your code
// This makes your code easier to read/debug an is good coding practice!
struct MovieModel {
    let title: String
    let genre: MovieGenre
    private(set) var isFavorite: Bool
    
    func updateFavoriteStatus(newValue: Bool) -> MovieModel {
        MovieModel(title: title, genre: genre, isFavorite: newValue)
    }
    
    mutating func updateFavoriteStatus(newValue: Bool) {
        isFavorite = newValue
    }
    
}

enum MovieGenre {
    case comedy, action, thriller
}

// Because PRIVATE then restricts your code so that you know like if property is private(set) you KNOW that it's only going to get edited from inside this class (within the class).
class MovieManager {
    
    // public- we can get and set property outside of this object(class)
    public var movie1 = MovieModel(title: "Avatar", genre: .action, isFavorite: false)
    
    // private - we can only access this property within the class. No outside access
    private var movie2 = MovieModel(title: "Step Brothers", genre: .comedy, isFavorite: false)
    
    // read is public, set is private
    private(set) var movie3 = MovieModel(title: "Don't worry darling", genre: .thriller, isFavorite: false)
    
    // VERSION 3 is considered BEST PRACTICE when we have func inside and can update data by using it from outside through func - not directly changing or updating
    func updateMovie3(isFavorite: Bool) {
        movie3.updateFavoriteStatus(newValue: isFavorite)
    }
}

let manager = MovieManager()
let someValue = manager.movie1

//manager.movie1 = manager.movie1.updateFavoriteStatus(newValue: true)
manager.movie1.updateFavoriteStatus(newValue: true)
//manager.movie3.updateFavoriteStatus(newValue: true)
manager.updateMovie3(isFavorite: true)

print(manager.movie3)

// Version 1 - PUBLIC
// We can GET and SET the value from outside the object.
// "too public"
let movie1 = manager.movie1
manager.movie1 = manager.movie1.updateFavoriteStatus(newValue: true)

// Version 2 - PRIVATE
// WE can't GET or SET the value from outside the object
// "cannot access the data"
let movie2 = manager.movie2
manager.movie2 = manager.movie2.updateFavoriteStatus(newValue: true)

//Version 3 - PRIVATE(SET)
// We can GET the value from ouside the object, but we can't SET the value from outside the object.
// "BEST PRACTICE"
let movie3 = manager.movie3
manager.movie3 = manager.movie3.updateFavoriteStatus(newValue: true)
manager.updateMovie3(isFavorite: true)

// NOTE: private & public are by far the most common but there are many others.
//
// open
// public
// internal
// fileprivate
// private
