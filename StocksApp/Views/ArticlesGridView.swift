//
//  ArticlesGridView.swift
//  StocksApp
//
//  Created by sangam pokharel on 24/09/2025.
//

import SwiftUI

struct ArticlesGridView: View {
    let columns = [
        GridItem(.flexible(),spacing: 8),
        GridItem(.flexible(),spacing: 8),
        GridItem(.flexible(),spacing: 8),
    ]
    let stocksArticles:[StockArticleViewModel]
    var body: some View {
        LazyVGrid(columns: columns) {
            ForEach(stocksArticles) { item in
               ArticleCellView(article: item)
            }
        }.padding(8)
    }
}

#Preview {
    ArticlesGridView(stocksArticles: [])
}
