//
//  StockDetailScreen.swift
//  StocksApp
//
//  Created by sangam pokharel on 24/09/2025.
//

import SwiftUI

struct StockDetailScreen: View {
    
    let stock:StockViewModel
    
    @StateObject private var vm = StockDetailViewModel()
    
    var body: some View {
        ScrollView {
            VStack {
              NewsArticleHeaderView(symbol: stock.symbol)
              LineChartView(values: Constants.getGraphValues(), labels: Constants.getYearlyLabels(), screenWidth: 600)
              ArticlesGridView(stocksArticles: vm.articles)
            }
        }.task(id: stock) {
            await vm.fetchArticlesByStock(stock: stock)
        }
    }
}

