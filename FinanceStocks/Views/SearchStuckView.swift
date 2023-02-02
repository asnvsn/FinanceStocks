//
//  SearchStuckView.swift
//  FinanceStocks
//
//  Created by Санжар Асанов on 30/11/22.
//

import SwiftUI

struct SearchStuckView: View {
    @State private var searchSymbol: String = ""
    var body: some View {
        VStack{
            TextField("Stock Ticker Symbol", text: $searchSymbol)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .stroke(Color.darkBlue, lineWidth: 1)
                ).padding()
                .textInputAutocapitalization(.never)
            Divider()
            
            StockCell(stock: "APPL", description: "Apple Computers")
            Divider()
            StockCell(stock: "APPL", description: "Apple Computers")
            Divider()
            StockCell(stock: "APPL", description: "Apple Computers")
            Divider()
            
            Spacer()
        }
    }
}

struct SearchStuckView_Previews: PreviewProvider {
    static var previews: some View {
        SearchStuckView()
    }
}
