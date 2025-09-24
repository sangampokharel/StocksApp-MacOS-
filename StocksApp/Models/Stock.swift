//
//  Stock.swift
//  StocksApp
//
//  Created by sangam pokharel on 24/09/2025.
//

import Foundation

struct Stock:Codable {
    let symbol:String
    let description:String
    let price:Double
    let change:String
    let historicalPrices:[Double]?
    
    
}

extension Stock {
    static func fromVM(stockVM:StockViewModel) -> Stock {
        return Stock(symbol: stockVM.symbol, description: stockVM.name, price: stockVM.price, change: stockVM.change, historicalPrices: stockVM.historicalPrices)
    }
}
