//
//  StockModel.swift
//  StocksTracker
//
//  Created by Manuchim Oliver on 02/03/2023.
//

import Foundation

import Foundation

struct StockModel: Hashable {
    let symbol: String // AAPL
    let description: String? // Apple Inc
    let currentPrice: Double? // 150.20
    let percentageChange: Double?
    let candles: [CGFloat]
}

