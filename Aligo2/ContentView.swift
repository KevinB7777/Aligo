//
//  ContentView.swift
//  Aligo2
//
//  Created by Kevin Babu on 3/23/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader{
            let size = $0.size
            
            MainMenu()
                .preferredColorScheme(.light)
        }
    }
    
    struct ContentViewPrevs: PreviewProvider{
        static var previews: some View{
            ContentView()
        }
    }
}
