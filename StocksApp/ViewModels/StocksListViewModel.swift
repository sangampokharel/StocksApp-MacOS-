//
//  StocksViewModel.swift
//  StocksApp
//
//  Created by sangam pokharel on 24/09/2025.
//
import Foundation

@MainActor
class StocksListViewModel:ObservableObject {
    
    var appState:AppState
    
    init(appState: AppState) {
        self.appState = appState
    }
    
    var stocks:[StockViewModel] {
        return appState.stocks
    }
    
    func getStocks() async {
        do {
           let stocks = try await Webservice().fetchStocks()
            appState.stocks = stocks.map(StockViewModel.init)
        }catch {
            print(error)
        }
    }
}
