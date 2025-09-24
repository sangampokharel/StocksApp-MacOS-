//
//  StockViewModel.swift
//  StocksApp
//
//  Created by sangam pokharel on 24/09/2025.
//

import Foundation

struct StockViewModel:Identifiable,Equatable {
    static func == (lhs: StockViewModel, rhs: StockViewModel) -> Bool {
        lhs.id == rhs.id
    }
    
    
    var id = UUID()
    private var stock:Stock
    
    init(stock:Stock) {
        self.stock = stock
    }
    
    var name:String {
        stock.description
    }
    
    var symbol:String {
        stock.symbol
    }
    
    var price:Double {
        stock.price
    }
    
    var change:String {
        stock.change
    }
    
    var historicalPrices:[Double] {
        stock.historicalPrices ?? []
    }
    
    
}
