//
//  StockArticleViewModel.swift
//  StocksApp
//
//  Created by sangam pokharel on 24/09/2025.
//

import Foundation

struct StockArticleViewModel:Identifiable {
    
    let id = UUID()
    private var article:Article
   
    init(article:Article) {
        self.article = article
    }
    
    var title:String {
        article.title ?? ""
    }
    
    var source:String {
        article.sourceName ?? ""
    }
    
    var urlToImage:URL? {
        return URL(string: article.urlToImage ?? "")
    }
}
