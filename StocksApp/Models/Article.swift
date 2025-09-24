//
//  Article.swift
//  StocksApp
//
//  Created by sangam pokharel on 24/09/2025.
//

import Foundation

struct ArticleResponse:Decodable {
    let articles:[Article]
}

struct Article:Decodable {
    let title:String?
    let url:String?
    let urlToImage:String?
    var sourceName:String?
    
    private enum ArticleKeys:String, CodingKey {
        case title
        case url
        case urlToImage
        case source
    }
    
    private enum SourceKeys:String,CodingKey {
        case id
        case name
    }
    
    init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: ArticleKeys.self)
        self.title = try? container.decodeIfPresent(String.self, forKey: .title)
        self.url = try? container.decodeIfPresent(String.self, forKey: .url)
        self.urlToImage = try? container.decodeIfPresent(String.self, forKey: .urlToImage)
        if let sourceContainer = try? container.nestedContainer(keyedBy: SourceKeys.self, forKey: .source) {
            self.sourceName = try sourceContainer.decode(String.self, forKey: .name)
        }
        
    }
}
