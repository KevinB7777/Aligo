//
//  TransactionListView.swift
//  Aligo2
//
//  Created by Kevin Babu on 3/23/24.
//

import Foundation
import SwiftUI

// TransactionListView.swift
import SwiftUI

enum SortOption: String, CaseIterable, Identifiable {
    case amount_descending, amount_ascending, merchant_A_Z, merchant_Z_A, category_A_Z, category_Z_A, date_descending, date_ascending
    var id: SortOption { self }
}

struct TransactionListView: View {
    var transactions: [Transaction]
    @State private var selectedSortOption: SortOption = .date_descending // Default sort option
    
    // Date formatter for displaying the dates in the list
    private let itemFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .none
        return formatter
    }()
    
    var body: some View {
        VStack {
            Picker("Sort by", selection: $selectedSortOption) {
                ForEach(SortOption.allCases) { option in
                    Text(option.rawValue.capitalized).tag(option)
                }
            }
            .pickerStyle(MenuPickerStyle())
            .padding()
            
            // Scrollable list of transactions
            List(sortedTransactions) { transaction in
                HStack {
                    Image(systemName: transaction.icon) // Replace with actual icons
                        .frame(width: 32, height: 32)
                    VStack(alignment: .leading) {
                        Text(transaction.merchant)
                            .font(.headline)
                        Text(transaction.category)
                            .font(.subheadline)
                        Text(transaction.date, formatter: itemFormatter) // Format the date
                            .font(.caption)
                    }
                    Spacer()
                    Text(String(format: "$%.2f", transaction.amount))
                }
            }
        }
        .navigationTitle("Past Purchases")
    }
    
    // Computed property to sort the transactions based on the selected sort option
    var sortedTransactions: [Transaction] {
        switch selectedSortOption {
        case .amount_ascending:
            return transactions.sorted { $0.amount < $1.amount }
        case .amount_descending:
            return transactions.sorted { $1.amount < $0.amount }
        case .merchant_A_Z:
            return transactions.sorted { $0.merchant < $1.merchant }
        case .merchant_Z_A:
            return transactions.sorted { $1.merchant < $0.merchant }
        case .category_A_Z:
            return transactions.sorted { $0.category < $1.category }
        case .category_Z_A:
            return transactions.sorted { $1.category < $0.category }
        case .date_ascending:
            return transactions.sorted { $0.date < $1.date }
        case .date_descending:
            return transactions.sorted { $1.date < $0.date }
        }
    }
}


// Preview Provider for TransactionListView
struct TransactionListView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionListView(transactions: transactions)
    }
}
