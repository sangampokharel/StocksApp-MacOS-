//
//  StockArticleListViewModel.swift
//  StocksApp
//
//  Created by sangam pokharel on 24/09/2025.
//
import Foundation

@MainActor
class StockArticleListViewModel:ObservableObject {
    
    @Published var articles:[StockArticleViewModel] = []

    func fetchArticles() async {
        do {
            let articles = try await Webservice().fetchBusinessArticles()
            self.articles = articles.map(StockArticleViewModel.init)
        }catch {
            print(error)
        }
    }
}
