//
//  CreditCardView.swift
//  Aligo2
//
//  Created by Kevin Babu on 3/23/24.
//

import Foundation
import SwiftUI

struct CreditCardView: View {
    var cards: [Card]

    var body: some View {
        NavigationView {  // Embed the ScrollView in a NavigationView
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    ForEach(cards) { card in
                        NavigationLink(destination: TransactionListView(transactions: card.pastTransactions)) {  // Navigation Link to TransactionListView
                            VStack {
                                VStack {
                                    Image(card.imageName)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 300, height: 190)
                                        .cornerRadius(15)
                                    Text(card.name)
                                    Spacer()
                                    Text(String(format: "$%.2f", card.balance))
                                }
                                .font(.headline)
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.black.opacity(0.7))
                                .cornerRadius(10)
                            }
                            .frame(width: 320, height: 250)
                            .background(Color.gray.opacity(0.1))
                            .cornerRadius(15)
                            .padding(.bottom, 8)
                        }
                    }
                }
                .padding()
                
                
            }
                
            }
            .navigationTitle("Credit Cards")
            
        }
        
    }


// Define a preview for CreditCardView
struct CreditCardView_Previews: PreviewProvider {
    static var previews: some View {
        CreditCardView(cards: demoCards)
    }
}
