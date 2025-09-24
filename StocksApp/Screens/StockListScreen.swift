//
//  StockListScreen.swift
//  StocksApp
//
//  Created by sangam pokharel on 24/09/2025.
//

import SwiftUI

struct StockListScreen: View {
    
    @StateObject var vm:StocksListViewModel
    @State private var search = ""
    
    let timer = Timer.publish(every: 5.0, on: .main, in: .common).autoconnect()
    
    init(vm: StocksListViewModel) {
        self._vm = StateObject(wrappedValue: vm)
    }
    
    var stocks: [StockViewModel] {
        if !search.isEmpty {
            return vm.stocks.filter { $0.symbol.starts(with: search.uppercased())}
        }
        return vm.stocks
    }
    
    var body: some View {
        VStack {
            StockListView(stocks: stocks)
                .searchable(text: $search, placement: .sidebar)
        }.task {
            await vm.getStocks()
        }.onReceive(timer) { _ in
            Task {
                await vm.getStocks()
            }
        }
    }
}

#Preview {
    StockListScreen(vm: StocksListViewModel(appState: AppState()))
}
