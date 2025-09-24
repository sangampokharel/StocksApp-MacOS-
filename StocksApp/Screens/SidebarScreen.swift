//
//  SidebarScreen.swift
//  StocksApp
//
//  Created by sangam pokharel on 24/09/2025.
//

import SwiftUI

struct SidebarScreen: View {
    
    @EnvironmentObject var appState:AppState
    
    var body: some View {
        VStack(alignment:.leading) {
            StockListScreen(vm: StocksListViewModel(appState: appState))
        }
    }
}

#Preview {
    SidebarScreen().environmentObject(AppState())
}
