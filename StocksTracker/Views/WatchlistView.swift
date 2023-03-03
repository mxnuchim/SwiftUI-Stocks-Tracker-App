//
//  WatchlistView.swift
//  StocksTracker
//
//  Created by Manuchim Oliver on 02/03/2023.
//

import SwiftUI

struct WatchlistView: View {
    @StateObject var stocksVM: StocksViewModel

    var body: some View {
        VStack {
            HStack {
                Text("Watchlist")
                    .font(.title)
                    .bold()
                    .foregroundColor(.darkBlue)
                
                Spacer()
            }
            
            ScrollView {
                VStack {
                    ForEach(stocksVM.stocks, id: \.self) {stock in
                        StockCardsView(stockModel: stock
                        )
                    }
                }
                
            }
            
        }
    }
}

//struct WatchlistView_Previews: PreviewProvider {
//    static var previews: some View {
//        WatchlistView()
//    }
//}
