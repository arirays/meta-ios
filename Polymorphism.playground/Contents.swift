import UIKit

// Polymorphism - is the process of inheriting base class methods to perform different tasks in the subclass.
// Transforming the base class at the subclass level.
// Method override. changes the functionality of a method.

class Spaghetti {
    var ingredients: Set<String> = [
    "pasta", "tomato sauce"
    ]
    
    func fetchIngredients() {
        print("Ingredients: \(ingredients)")
    }
}

// overwritten inhereted function from Superclass. Final means no class can inherit from it
final class SpaghettiMeatball: Spaghetti {
    override func fetchIngredients() {
        print("Before")
        super.fetchIngredients()
        print("After")
    }
}

// We instantiate a spaghetti class instance and a spaghetti meatball version
let spaghetti = Spaghetti()
let spaghettiMeatball = SpaghettiMeatball()

spaghetti.fetchIngredients()
spaghettiMeatball.fetchIngredients()
