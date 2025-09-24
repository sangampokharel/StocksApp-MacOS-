//
//  Webservice.swift
//  StocksApp
//
//  Created by sangam pokharel on 24/09/2025.
//
import Foundation

enum NetworkError:Error {
    case invalidServerResponse
}

class Webservice {
    func fetchStocks() async throws -> [Stock] {
        let (data,response) = try await URLSession.shared.data(from: Constants.Urls.allStocks)
        guard let httpResponse = response as? HTTPURLResponse,
              httpResponse.statusCode == 200 else {
            throw NetworkError.invalidServerResponse
        }
        
        let stocks = try JSONDecoder().decode([Stock].self, from: data)
        return stocks
    }
    
    
    func fetchBusinessArticles() async throws -> [Article] {
        
       let (data,response) = try await URLSession.shared.data(from: Constants.Urls.businessArticles)
        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
            throw NetworkError.invalidServerResponse
        }
        
        let articleResponse = try JSONDecoder().decode(ArticleResponse.self, from: data)
        
        return articleResponse.articles
    }
}
