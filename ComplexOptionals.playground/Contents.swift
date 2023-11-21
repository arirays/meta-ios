
import Foundation

var userIsNew: Bool? = true
var userDidCompleteOnboarding: Bool? = false
var userFavoriteMovie: String? = nil


func checkIfUserIsSetup() -> Bool {
    
    if let isNew = userIsNew, let didCompleteOnboarding = userDidCompleteOnboarding, let favoriteMovie = userFavoriteMovie {
        // userIsNew == Bool AND
        // userDidCompleteOnboarding == Bool AND
        // userFavoriteMovie == String
        return getUserStatus(userIsNew: isNew, userDidCompleteOnboarding: didCompleteOnboarding, userFavoriteMovie: favoriteMovie)
    } else {
        // userIsNew == nil OR
        // userDidCompleteOnboarding == nil OR
        // userFavoriteMovie == nil
        return false
    }
}


func checkIfUserIsSetup2() -> Bool {
    
    guard let userIsNew, let userDidCompleteOnboarding, let userFavoriteMovie else {
        return false
    }
    
    return getUserStatus(userIsNew: userIsNew, userDidCompleteOnboarding: userDidCompleteOnboarding, userFavoriteMovie: userFavoriteMovie)
}

func getUserStatus(userIsNew: Bool, userDidCompleteOnboarding: Bool, userFavoriteMovie: String ) -> Bool {
    if userIsNew && userDidCompleteOnboarding {
        return true
    }
    
    return false
}

