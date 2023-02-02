//
//  StockModel.swift
//  FinanceStocks
//
//  Created by Санжар Асанов on 31/1/23.
//

import Foundation
import SwiftUI

struct  StockModel: Hashable {
    let symbol: String // AAPL
    let description: String? // AAPL Inc
    let currentPrice: Double? // 150.20
    let percentageChange: Double?
    let candles: [CGFloat]
}
