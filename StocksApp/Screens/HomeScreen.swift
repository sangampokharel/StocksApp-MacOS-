//
//  HomeScreen.swift
//  StocksApp
//
//  Created by sangam pokharel on 24/09/2025.
//

import SwiftUI

struct HomeScreen: View {
    @EnvironmentObject private var appState:AppState
    
    var body: some View {
        NavigationView {
            SidebarScreen()
                .frame(minWidth: 200,maxWidth: 250)
            
            switch appState.route {
            case .businessArticles:
                NewsArticleListScreen()
            case .stockDetail(let stockViewModel):
                StockDetailScreen(stock: stockViewModel)
            }
            
        }
    }
}

#Preview {
    HomeScreen()
        .frame(width: 400,height: 400)
}
