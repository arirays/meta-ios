import UIKit

// Arrays much more common in an actual apps. Arrays are stored in the Stack memory

// Here below for ex if we want to combine two strings
var myTitle: String = "Hello, world!"
var myTitle2: String = "Hello, world!!"

// We can use Tuple but it's not scalable(i.e. we have a hundred titles)

func doSomething(value: (title1: String, title2: String)) {
    
}

doSomething(value: (myTitle,myTitle2))

// Custom Data Model
struct TitlesModel {
    let title1: String
    let title2: String
}

func doSomething(value: TitlesModel) {
    
}

doSomething(value: TitlesModel(title1: myTitle, title2: myTitle2))

// ----------------------------------------------------------------

let apple = "Apple"
let orange = "Orange"

let fruits: [String] = ["Apple", "Orange"]
let fruits2: [String] = [apple, orange]

// Creating Array Using Generics
let fruits3: Array<String> = [apple, orange]
let myBools: [Bool] = [true, false, true, true, false]


func doSomething(value: [String]) {
    
}

var fruitsArray: [String] = ["Apple", "Orange", "Banana", "Mango"]

let count = fruitsArray.count
let firstItem = fruitsArray.first
let lastItem = fruitsArray.last

if let firstItem = fruitsArray.first {
    // first item
}

//fruitsArray = fruitsArray + ["Banana", "Mango"]

//fruitsArray.append("Banana")
//fruitsArray.append("Mango")

fruitsArray.append(contentsOf: ["Banana", "Mango"])




// Count   = 1, 2, 3, 4
// Indexes = 0, 1, 2, 3

// Accessing the Subscripit(Index) in the ARRAY. It's not safe(what if index is out if range)
fruitsArray[2]
if fruitsArray.indices.contains(4) {
    let item = fruitsArray[4]
}

let firstIndex = fruitsArray.indices.first
let lastIndex = fruitsArray.indices.last

fruitsArray.append("Watermelon")
fruitsArray.insert("Watermelon", at: 2)
fruitsArray.insert(contentsOf: ["Watermelon", "Tangerine"], at: 2)
fruitsArray.remove(at: 3)

if fruitsArray.indices.contains(1){
    fruitsArray.remove(at: 1)
}

fruitsArray.removeAll()

print(fruitsArray)


// Custom Array

struct ProductModel {
    let title: String
    let price: Int
}

var myProducts: [ProductModel] = [
    ProductModel(title: "Product 1", price: 50),
    ProductModel(title: "Product 2", price: 55),
    ProductModel(title: "Product 3", price: 60),
    ProductModel(title: "Product 4", price: 65),
    ProductModel(title: "Product 5", price: 70)
]

// SETS
var finalFruits: [String] = ["Apple", "Orange", "Banana", "Apple"]
print(finalFruits)

var fruitsSet: Set<String> = ["Apple", "Orange", "Banana", "Apple"]
print(fruitsSet)
