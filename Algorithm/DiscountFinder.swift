//
//  DiscountFinder.swift
//  Aligo2
//
//  Created by Kevin Babu on 3/23/24.
//

import Foundation
import SwiftUI


enum Month: Int {
    case january = 0, february, march, april, may, june, july, august, september, october, november, december
    
    var name: String {
        switch self {
        case .january: return "January"
        case .february: return "February"
        case .march: return "March"
        case .april: return "April"
        case .may: return "May"
        case .june: return "June"
        case .july: return "July"
        case .august: return "August"
        case .september: return "September"
        case .october: return "October"
        case .november: return "November"
        case .december: return "December"
        }
    }
    
    static func monthName(fromInt int: Int) -> String {
        guard let month = Month(rawValue: int) else { return "Invalid month" }
        return month.name
    }
}

func assignPurchaseToBestCreditCard(for purchase: Transaction) {
    var bestCreditCardIndex: Int? = nil
    var maxCashBackRate: Double = 0.0
    var creditCards = demoCards
    for index in creditCards.indices {
        var cashBackRate: Double = creditCards[index].generalCashBackRate

        // Check if there is a specific cash back rate for the purchase category
        if let categoryCashBackRate = creditCards[index].categoryCashBackRates[purchase.category] {
            cashBackRate = max(cashBackRate, categoryCashBackRate)
        }
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMMM"
        // Check if there is a specific cash back rate for the purchase month
        if let monthCashBackRate = creditCards[index].categoryCashBackRates[dateFormatter.string(from: purchase.date)] {
            cashBackRate = max(cashBackRate, monthCashBackRate)
        }

        if cashBackRate > maxCashBackRate {
            bestCreditCardIndex = index
            maxCashBackRate = cashBackRate
        }
    }

    if let index = bestCreditCardIndex {
        creditCards[index].pastTransactions.append(purchase)
    }
}
