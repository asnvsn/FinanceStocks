//
//  StockCell.swift
//  FinanceStocks
//
//  Created by Санжар Асанов on 30/11/22.
//

import SwiftUI

struct StockCell: View {
    let stock: String
    let description: String
    var body: some View {
        HStack {
            Text(stock)
                .font(.title3)
                .bold()
                .foregroundColor(Color.darkBlue)
            Spacer(minLength: 0)
            
            Text(description)
                .foregroundColor(.gray)
        }
        .padding()
        .background(.white)
    }
}

struct StockCell_Previews: PreviewProvider {
    static var previews: some View {
        StockCell(stock: "APPL", description: "Apple Computers")
    }
}
