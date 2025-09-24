//
//  AppState.swift
//  StocksApp
//
//  Created by sangam pokharel on 24/09/2025.
//

import Foundation
class AppState:ObservableObject {
    
    @Published var stocks:[StockViewModel] = []
}
