//
//  StockCard.swift
//  FinanceStocks
//
//  Created by Санжар Асанов on 29/11/22.
//

import SwiftUI

struct StockCard: View {
    
    let stockModel: StockModel
    @State private var logoStr: String = ""
    
    var body: some View {
        VStack{
            HStack{
                
               AsyncImage(url: URL(string: "htpps://logo.clearbit.com\(logoStr).com"))
                
                VStack {
                    Text("AAPL")
                        .bold()
                        .font(.title3)
                    Text("Apple Inc")
                        .foregroundColor(.gray)
                        .lineLimit(1)
                        .truncationMode(.tail)
                }
                Spacer()
                Text("1.2%")
                    .foregroundColor(.lightGreen)
                    .bold()
                    .font(.title3)
            }
            Spacer()
            HStack{
                Text("$137.59")
                    .bold()
                    .font(.title)
                
                Spacer()
                LineChart(data: StockMockData.apple.normalizedValues)
                    .stroke(Color.lightGreen, lineWidth: 1.5)
            }
        }
        .padding(.horizontal)
        .padding(.vertical)
        .padding(5)
        .frame(height: UIScreen.main.bounds.height / 4)
        .frame(maxWidth: .infinity)
        .background(
            RoundedRectangle(cornerRadius: 30)
                .stroke(Color.gray))
        
        .onAppear{
            if let logoStr = stockModel.description?.components(separatedBy: " ").first {
                // get first word
                self.logoStr = logoStr.lowercased()
            }
        }
    }
}

//struct StockCard_Previews: PreviewProvider {
//    static var previews: some View {
//        StockCard()
//    }
//}
