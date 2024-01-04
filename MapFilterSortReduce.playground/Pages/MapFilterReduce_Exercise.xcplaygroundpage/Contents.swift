
import Foundation

// Calculate values

struct Order {
    let price: Int
    let location: String
}

func totalRevenueOf(orders: [Order], location: String) -> Int {
    let ordersAtLocation = orders.filter {$0.location == location }
    print(ordersAtLocation)
    let orderPrices = ordersAtLocation.map {$0.price }
    print(orderPrices)
    // sum of all orders
    return ordersPrices.reduce(0) { $0 + $1 }
}

let orders = [
    Order(price: 24, location: "Honolulu"),
    Order(price: 37, location: "San Francisco"),
    Order(price: 10, location: "Tokyo"),
    Order(price: 101, location: "Honolulu"),
]

let result = totalRevenueOf(orders: orders, location: "Honolulu")
print(result)





