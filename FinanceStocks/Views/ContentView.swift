//
//  ContentView.swift
//  FinanceStocks
//
//  Created by Санжар Асанов on 29/11/22.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var stocksVM: StocksViewModel = StocksViewModel()
    
    @State private var isShowingStockSearchSheet: Bool = false
    
    var body: some View {
        VStack{
            HeaderView(showSheet: $isShowingStockSearchSheet)
            
            PortfolioCard(stocksVM: stocksVM)
            
            WatchListView(stocksVM: stocksVM)
            
            Spacer()
        }
        .padding()
        .edgesIgnoringSafeArea(.bottom)
        .sheet(isPresented: $isShowingStockSearchSheet) {
            SearchStuckView()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
