////
////  FinancialSummary.swift
////  Aligo2
////
////  Created by Kevin Babu on 3/23/24.
////
//
//import Foundation
//import SwiftUI
//
///// Financial Summary Model for displaying recent transactions in a chart
//struct FinancialSummary: Identifiable {
//    var id: UUID = .init()
//    var category: TransactionCategory
//    var records: [TransactionRecord]
//
//    struct TransactionRecord: Identifiable {
//        var id: UUID = .init()
//        var date: Date
//        var total: Double
//    }
//}
//
//enum TransactionCategory: String {
//    case revenue = "Revenue"
//    case costs = "Costs"
//}
//
//var mockData: [FinancialSummary] = [
//    .init(category: .revenue, records: [
//        .init(date: .addMonths(-4), total: 4620),
//        .init(date: .addMonths(-3), total: 3790.8),
//        .init(date: .addMonths(-2), total: 4150.75),
//        .init(date: .addMonths(-1), total: 3230.5),
//    ]),
//    .init(category: .costs, records: [
//        .init(date: .addMonths(-4), total: 2560.4),
//        .init(date: .addMonths(-3), total: 1830.2),
//        .init(date: .addMonths(-2), total: 2120),
//        .init(date: .addMonths(-1), total: 2450.7),
//    ])
//]
//
//extension Date {
//    static func addMonths(_ value: Int) -> Self {
//        let calendar = Calendar.current
//        return calendar.date(byAdding: .month, value: value, to: .init()) ?? .init()
//    }
//}
