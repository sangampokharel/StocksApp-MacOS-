//
//  StockCellView.swift
//  StocksApp
//
//  Created by sangam pokharel on 24/09/2025.
//

import SwiftUI

struct StockCellView: View {
    
    let stock:StockViewModel
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing:2) {
                Text(stock.symbol)
                    .font(.system(size: 15))
                    .fontWeight(.bold)
                Text(stock.name)
                    .opacity(0.4)
            }
            
            Spacer()
            
            VStack(alignment: .trailing,spacing: 2) {
                Text("\(stock.price, specifier: "%.2f")")
                    .font(.system(size: 15))
                    .fontWeight(.bold)
                Button {
                    
                } label: {
                    Text(stock.change)
                        .frame(maxWidth: .infinity,alignment: .trailing)
                }.frame(maxWidth: 60)
                    .background(changeColor(stock.change))
                    .clipShape(RoundedRectangle(cornerRadius: 6,style: .continuous))

            }
        }
    }
}

#Preview {
    StockCellView(stock: StockViewModel(stock: Stock(symbol: "GOL", description: "dfsad", price: 12.34, change: "3.4", historicalPrices: [])))
}
