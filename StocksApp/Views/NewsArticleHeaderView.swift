//
//  NewsArticleHeaderView.swift
//  StocksApp
//
//  Created by sangam pokharel on 24/09/2025.
//

import SwiftUI

struct NewsArticleHeaderView: View {
   
    @EnvironmentObject private var appState:AppState
    let symbol:String
    var body: some View {
        let stock = appState.stockBySymbol(symbol)
        HStack(alignment: .firstTextBaseline) {
            VStack(alignment: .leading) {
                Text(stock?.symbol ?? "")
                    .font(.system(size: 28))
                    .fontWeight(.bold)
                
                Text("\(stock?.price ?? 0.0, specifier: "%.2f")")
                    .font(.system(size: 15))
                    .fontWeight(.bold)
            }
            
            Text(stock?.name ?? "")
                .opacity(0.4)
            Spacer()
        }.padding()
    }
}
