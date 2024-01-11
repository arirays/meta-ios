class Berry {
}
class Blueberry: Berry {
}
class Strawberry: Berry {
}
let berries = [Berry(), Blueberry(), Strawberry()]
for berry in berries {
    if berry is Berry {
        print("Berry")
    }
    if berry is Blueberry {
        print("Blueberry")
    }
    if berry is Strawberry {
        print("Strawberry")
    }
}

protocol FoodDelivery {
    func deliverFood()
}
struct Car: FoodDelivery {
    func deliverFood() {
        print("Deliver food by car")
    }
}
class Restaurant {
    var delegate: FoodDelivery?
    func delegateDelivery() {
        if let delegate = delegate {
            delegate.deliverFood()
            return
        }
        print("No delegate found.")
    }
}
let restaurant = Restaurant()
restaurant.delegateDelivery()
restaurant.delegate = Car()

//let berries = [
//    "strawberry",
//    "blueberry",
//    "grape",
//    "goji"
//]
//let result = berries
//    .filter { $0.count > 5 }
//    .map { "healthy \($0)\n" }
//    .reduce("Berries:\n") { $0 + $1 }
//print(result)
