//
//  StocksViewModel.swift
//  StocksTracker
//
//  Created by Manuchim Oliver on 02/03/2023.
//

import Foundation
import SwiftUI

class StocksViewModel: ObservableObject {
    
    var tickers = ["AAPL", "NVDA", "NFLX", "TSLA", "SBUX"]
    
    @Published var stocks: [StockModel] = [StockModel]()
    
    
    init() {
        self.fetchStockData()
    }
    
    
    public func fetchStockData() {
        
        for ticker in tickers {
            
            ApiRequest.instance.searchSymbol(searchQuery: ticker) { returnedLookup in
                ApiRequest.instance.getSymbolQuote(symbol: ticker) { returnedQuote in
                    ApiRequest.instance.getCandles(symbol: ticker, hourLength: 12) { returnedCandles in
                        
                        let candleArray: [CGFloat] = returnedCandles?.c.map {CGFloat($0)} ?? []
                        
                        let stockInfo = returnedLookup?.result[0]
                        
                        let newStock = StockModel(symbol: ticker, description: stockInfo?.description, currentPrice: returnedQuote?.c, percentageChange: returnedQuote?.dp, candles: candleArray)
                        
                        
                        DispatchQueue.main.async {
                            self.stocks.append(newStock)
                        }
                        
                        
                    }
                }
            }
            
            
        }
        
    }
    
}

