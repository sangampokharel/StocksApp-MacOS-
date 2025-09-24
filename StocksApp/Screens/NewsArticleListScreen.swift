//
//  NewsArticleListScreen.swift
//  StocksApp
//
//  Created by sangam pokharel on 24/09/2025.
//

import SwiftUI

struct NewsArticleListScreen: View {
    @StateObject private var vm = StockArticleListViewModel()
    var body: some View {
        ScrollView {
            
            Text("Top Stories")
                .fontWeight(.bold)
                .font(.system(size: 40))
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding()
            
            NewsArticleListView(stocksArticles: vm.articles)
            
        }.task {
            await vm.fetchArticles()
        }
    }
}

#Preview {
    NewsArticleListScreen()
}
