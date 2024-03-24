//
//  MainMenu.swift
//  Aligo2
//
//  Created by Kevin Babu on 3/23/24.
//

import Foundation
import SwiftUI

struct MainMenu: View {
    var body: some View {
        NavigationView {
                VStack {
                    Text("ALIGO")
                        .bold()
                        .font(.largeTitle)
                        .fontWidth(Font.Width(100))
                        .foregroundColor(.black)
                        .frame(height: 100)
                        .frame(maxWidth: .infinity)
                        .cornerRadius(10)
                        .padding(.horizontal)
                    
                    Spacer()
                    
                    // Credit Cards Button
                    NavigationLink(destination: CreditCardView(cards: demoCards)) {
                        Text("Credit Cards")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(height: 200)
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .cornerRadius(10)
                            .padding(.horizontal)
                    }
                    // Past Purchases Button
                    NavigationLink(destination: TransactionListView(transactions: transactions)) {
                        Text("Past Purchases")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(height: 200)
                            .frame(maxWidth: .infinity)
                            .background(Color.green)
                            .cornerRadius(10)
                            .padding(.horizontal)
                    }
                    
                    Spacer()
                }
                
            }
        }
}
struct MainMenu_Previews: PreviewProvider {
    static var previews: some View {
        MainMenu()
    }
}
