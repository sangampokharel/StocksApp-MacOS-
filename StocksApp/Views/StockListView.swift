//
//  StockListView.swift
//  StocksApp
//
//  Created by sangam pokharel on 24/09/2025.
//

import SwiftUI

struct StockListView: View {
    let stocks:[StockViewModel]
    @EnvironmentObject private var appState:AppState
    var body: some View {
        List {
            BusinessNewsHeaderView()
            ForEach(stocks) {stock in
                StockCellView(stock: stock)
                    .contentShape(Rectangle())
                    .onTapGesture {
                        appState.route = .stockDetail(stock)
                    }
            }
        }
    }
}

#Preview {
    StockListView(stocks: [
        StockViewModel(stock: Stock(symbol: "GOOG", description: "Google", price: 123.44, change: "-0.24", historicalPrices: []))
        
    ])
}
