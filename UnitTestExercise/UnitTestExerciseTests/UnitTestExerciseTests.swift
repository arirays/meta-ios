//
//  UnitTestExerciseTests.swift
//  UnitTestExerciseTests
//
//  Created by AS on 1/6/24.
//

import XCTest
@testable import UnitTestExercise

final class UnitTestExerciseTests: XCTestCase {

    // Unit test functions must start with the word test to be detected as such by Xcode
    func test_calculateTotal_salexTaxTwentyPercent() {
        let items = [
            CheckoutItem(name: "Snack", price: 625),
            CheckoutItem(name: "Paper Towel", price: 850),
            CheckoutItem(name: "Cake", price: 325),
            CheckoutItem(name: "Salt", price: 175)
        ]
        
        let taxPercentage = 20
        
        let totalToPay = calculateTotal(items: items, localTaxPercent: taxPercentage)
        
        XCTAssertEqual(totalToPay, 2370)
    }
}




