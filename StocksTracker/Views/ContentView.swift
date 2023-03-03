//
//  ContentView.swift
//  StocksTracker
//
//  Created by Manuchim Oliver on 02/03/2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var stocksVM: StocksViewModel = StocksViewModel()
    
    @State private var showSearchSheet: Bool = false
    
    var body: some View {
        VStack {
           HeaderView(showSheet: $showSearchSheet)
            
            PortfolioCardView(stocksVM: stocksVM)
            
            WatchlistView(stocksVM: stocksVM)
            
            Spacer()

        }
        .padding()
        .edgesIgnoringSafeArea(.bottom)
        .sheet(isPresented: $showSearchSheet) {
            SearchView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
