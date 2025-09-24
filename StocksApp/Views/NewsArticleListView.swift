//
//  NewsArticleListView.swift
//  StocksApp
//
//  Created by sangam pokharel on 24/09/2025.
//

import SwiftUI

struct NewsArticleListView: View {
    let stocksArticles:[StockArticleViewModel]
    var body: some View {
       ArticlesGridView(stocksArticles: stocksArticles)
    }
}

#Preview {
    NewsArticleListView(stocksArticles: [])
}
