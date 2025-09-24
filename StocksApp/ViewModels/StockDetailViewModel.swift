//
//  StockDetailViewModel.swift
//  StocksApp
//
//  Created by sangam pokharel on 24/09/2025.
//

import Foundation

@MainActor
class StockDetailViewModel:ObservableObject {

    @Published var articles:[StockArticleViewModel] = []
    
    func fetchArticlesByStock(stock:StockViewModel) async {
        do {
            let articles = try await Webservice().fetchBusinessArticlesByStock(stock: Stock.fromVM(stockVM: stock))
            self.articles = articles.map(StockArticleViewModel.init)
        }catch {
            print(error)
        }
    }
}
