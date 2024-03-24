//
//  Transaction.swift
//  Aligo2
//
//  Created by Kevin Babu on 3/23/24.
//

import Foundation
import SwiftUI


/// Transaction Model & Sample Transactions
struct Transaction: Identifiable {
    var id: UUID = .init()
    var amount: Double
    var merchant: String
    var icon: String
    var category: String
    let date: Date  // Using Swift's built-in Date type
}

// Helper function to create Date objects
func createDate(day: Int, month: Int, year: Int) -> Date {
    var components = DateComponents()
    components.day = day
    components.month = month
    components.year = year
    // Note: Assumes the current calendar is Gregorian
    return Calendar.current.date(from: components) ?? Date()
}

var transactions: [Transaction] = [
    Transaction(amount: 200, merchant: "Supermarket", icon: "Supermarket", category: "Food", date: createDate(day: 14,month: 3,year: 2020)),
    Transaction(amount: 45, merchant: "StreamView", icon: "StreamView", category: "Entertainment", date: createDate(day: 1,month: 10,year: 2020)),
    Transaction(amount: 30.12, merchant: "DesignPlus", icon: "DesignPlus", category: "Subscription", date: createDate(day: 17,month: 9,year: 2019)),
    Transaction(amount: 75, merchant: "TechStore", icon: "TechStore", category: "Electronics", date: createDate(day: 4,month: 6,year: 2021)),
    Transaction(amount: 20, merchant: "CreatorHub", icon: "CreatorHub", category: "Subscription", date: createDate(day: 29,month: 5,year: 2022)),
    Transaction(amount: 50, merchant: "PicturePerfect", icon: "PicturePerfect", category: "Service", date: createDate(day: 2,month: 12,year: 2023)),
    Transaction(amount: 15, merchant: "MovieMania", icon: "MovieMania", category: "Entertainment", date: createDate(day: 30,month: 3,year: 2000)),
    Transaction(amount: 300, merchant: "EditPro", icon: "EditPro", category: "Software", date: createDate(day: 3,month: 3,year: 2020)),
    Transaction(amount: 120, merchant: "SketchIt", icon: "SketchIt", category: "Tools", date: createDate(day: 2,month: 8,year: 2017)),
]



