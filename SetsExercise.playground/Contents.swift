import UIKit


// set of strings. Always create as Set<Element>
var pastaTypesSet = Set<String>()
// array of strings
var pastaTypesArray = [String]()

// to add new values to a newly created set 
//we use predefined method .insert()

pastaTypesSet.insert("Tagliatelle")
pastaTypesSet.insert("Fettucine")
pastaTypesSet.insert("Spaghetti")
pastaTypesSet.insert("Linguine")

print(pastaTypesSet)
print(pastaTypesSet.count)

// to remove the value or multiple values from the set
// we use .remove()

pastaTypesSet.remove("Linguine")

// to unite two sets together, while checking and removing duplicates(union will only hold the values found in the first set if the second set doesn't contain the same values.
// we use .union()

var pastaTypesSet2 = Set<String>()
pastaTypesSet2.insert("Tortellini")
pastaTypesSet2.insert("Ziti")
pastaTypesSet2.insert("Tagliatelle")
pastaTypesSet2.insert("Lasagna")

let pastaSetUnion = pastaTypesSet.union(pastaTypesSet2)
print(pastaSetUnion)
print(pastaSetUnion.count)
