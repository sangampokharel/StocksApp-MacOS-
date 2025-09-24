//
//  Constants.swift
//  StocksApp
//
//  Created by sangam pokharel on 24/09/2025.
//

import Foundation

struct Constants {
    
    struct Urls {
        static let apiKey = "973a09e11bbd4f778c4ce1307f528aa9"
        
        static let allStocks = URL(string: "https://azamsharp-server-dddabf536d7a.herokuapp.com/latest-stocks")!
        static let businessArticles = URL(string: "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=\(apiKey)")!
        
        static func businessArticlesBy(stock:Stock) -> URL {
            URL(string: "https://newsapi.org/v2/everything?q=\(stock.description)&sortBy=published&apiKey=\(apiKey)")!
        }
    }
    
   static func getYearlyLabels() -> [String] {
        return (2015...2025).map { String($0) }
    }
    
   static func getGraphValues() -> [Double] {
       return (1...30).map { _ in Double.random(in: 0...1000) }
    }
}
