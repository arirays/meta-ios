import Foundation


protocol GoodChef {
    func cookGoodFood()
}

protocol GreatChef {
    func cookGreatFood()
}

protocol ExcellentChef {
    func cookExcellentFood()
}


//class Person: GoodChef, GreatChef {
//    func cookGoodFood() {
//        
//    }
//    
//    func cookGreatFood() {
//        
//    }
//}

// Better organization practice is use an extension for each protocol adoption and conformance. To keep protocol-related code organized in an extension block.

// example below, how a class can inherit three different protocols.
class Person {
    
}

extension Person: GoodChef {
    func cookGoodFood() {
        
    }
}

extension Person: GreatChef {
    func cookGreatFood() {
        
    }
}

extension Person: ExcellentChef {
    func cookExcellentFood() {
        
    }
}


//Creating protocol that inherits other protocols. When there is an opportunity to group protocols, consider using a protocol conformance per class.
protocol BlackBeltChef: GoodChef, GreatChef, ExcellentChef {
    func cookBlackBeltFood()
}

// Having less protocol conformances isn't necessarily prefered by default. It's normal to hvar more than one protocol conformance per class.
class Person: BlackBeltChef {
    func cookGoodFood() {}
    func cookGreatFood() {}
    func cookExcellentFood() {}
    func cookBlackBeltFood() {}
}
