//
//  WatchListView.swift
//  FinanceStocks
//
//  Created by Санжар Асанов on 29/11/22.
//

import SwiftUI

struct WatchListView: View {
    @StateObject var stocksVM: StocksViewModel
    var body: some View {
        
        VStack {
            HStack{
                
                Text("Watchlist")
                    .font(.title)
                    .bold()
                    .foregroundColor(.darkBlue)
                Spacer()
            }
            //stockcards
            ScrollView{
                VStack{
                    
                    ForEach(stocksVM.stocks, id: \.self) { stock in
                        StockCard(stockModel: stock)
                    }
                    
                }
            }
            .padding(3)
        }
    }
}

//struct WatchListView_Previews: PreviewProvider {
//    static var previews: some View {
//        WatchListView()
//    }
//}
