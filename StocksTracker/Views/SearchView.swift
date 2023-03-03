//
//  SearchView.swift
//  StocksTracker
//
//  Created by Manuchim Oliver on 02/03/2023.
//

import SwiftUI

struct SearchView: View {
    @State private var searchSymbol: String = ""
    var body: some View {
        VStack {
            TextField("Stock Ticker Symbol", text: $searchSymbol)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .stroke(Color.darkBlue, lineWidth: 1)
                )
                .padding()
                .textInputAutocapitalization(.never)
            
            Divider()
            
            StockCellView(stock: "AAPL", description: "Apple Computers")
            Divider()
            StockCellView(stock: "AAPL", description: "Apple Computers")
            Divider()
            StockCellView(stock: "AAPL", description: "Apple Computers")
            Divider()
            StockCellView(stock: "AAPL", description: "Apple Computers")
            
            Spacer()
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
