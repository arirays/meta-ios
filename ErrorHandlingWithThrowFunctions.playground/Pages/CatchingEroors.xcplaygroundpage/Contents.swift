
import Foundation

enum RegistrationDetailsFormatError: Error {
    case usernameEmpty
    case passwordEmpty
    case passwordTooShort
}

func validateUserDetails(username: String, password: String) throws {
    if username.isEmpty {
        throw RegistrationDetailsFormatError.usernameEmpty
    }
    else if password.isEmpty {
        throw RegistrationDetailsFormatError.passwordEmpty
    }
    else if password.count < 7 {
        throw RegistrationDetailsFormatError.passwordTooShort
    }
}


do {
    try validateUserDetails(username: "JohnAppleseed", password: "test")
    print("Validation success")
} 
catch RegistrationDetailsFormatError.usernameEmpty, RegistrationDetailsFormatError.passwordEmpty {
    print("Username and password should not be empty")
}

catch RegistrationDetailsFormatError.passwordTooShort {
    print("Password is too short")
}

catch {
    print(error)
}
