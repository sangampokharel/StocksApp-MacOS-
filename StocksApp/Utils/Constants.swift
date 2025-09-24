//
//  Constants.swift
//  StocksApp
//
//  Created by sangam pokharel on 24/09/2025.
//

import Foundation

struct Constants {
    struct Urls {
        static let allStocks = URL(string: "https://azamsharp-server-dddabf536d7a.herokuapp.com/latest-stocks")!
        static let businessArticles = URL(string: "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=973a09e11bbd4f778c4ce1307f528aa9")!
    }
}
