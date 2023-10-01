
var goldBars = 100

func spendTenGoldBars(from inventory: inout Int, completion: (Int) -> Void) {
    inventory -= 10
    return completion(inventory)
}

print("You had \(goldBars) goldBars")
spendTenGoldBars(from: &goldBars) {
    goldBars in
    print("You spent ten gold bars")
    print("You have \(goldBars) gold bars.")
}


let array = [6, 2, 3, 9, 4, 1]

//func addOne(n1: Int) -> Int {
//    return n1 + 1
//}


//array.map(addOne)

array.map({ $0 + 1 })
print(array.map({ $0 + 1 }))
