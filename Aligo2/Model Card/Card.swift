//
//  Card.swift
//  Aligo2
//
//  Created by Kevin Babu on 3/23/24.
//

import Foundation
import SwiftUI

struct Card: Identifiable {
    var id = UUID()
    var imageName: String
    var name: String
    var balance: Double
    var pastTransactions: [Transaction]
    var generalCashBackRate: Double
    var categoryCashBackRates: [String: Double] // Dictionary mapping service categories to cash back rates
    // Other properties as needed
    // Convenience initializer to provide default values for cash back rates
    init(imageName: String, cardName: String, balance: Double, generalCashBackRate: Double, categoryCashBackRates: [String: Double]) {
        self.imageName = imageName
        self.balance = balance
        self.pastTransactions = []
        self.name = cardName
        self.generalCashBackRate = generalCashBackRate
        self.categoryCashBackRates = categoryCashBackRates
    }

    // Convenience initializer to generate random cash back rates
    init(imageName: String, cardName: String, balance: Double) {
        self.imageName = imageName
        self.balance = balance
        self.pastTransactions = []
        self.name = cardName
        self.generalCashBackRate = Double.random(in: 0.01...0.03) // Random rate between 1% and 3%

        var categoryCashBackRates: [String: Double] = [:]
        let categories = ["Grocery", "Dining", "Shopping", "Travel", "Electronics", "Food", "Entertainment", "Subscription", "Service", "Software", "Tools", "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"] // Example categories
        for category in categories {
            categoryCashBackRates[category] = Double.random(in: 0.05...0.1) // Random rate between 5% and 10%
        }
        self.categoryCashBackRates = categoryCashBackRates
    }
}

// Replace these names with the exact names you've used in your Assets.xcassets
var demoCards = [
    Card(imageName: "CapitalOneCardImage", cardName: "Capital One Savor", balance: 1200),
    Card(imageName: "Chase Debit Card", cardName: "Chase Visa", balance: 3500)
    // ... Add more dummy cards as needed
]


