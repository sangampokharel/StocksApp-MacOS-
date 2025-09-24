//
//  HomeScreen.swift
//  StocksApp
//
//  Created by sangam pokharel on 24/09/2025.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        NavigationView {
            SidebarScreen()
                .frame(minWidth: 200,maxWidth: 250)
            NewsArticleListScreen()
        }
    }
}

#Preview {
    HomeScreen()
        .frame(width: 400,height: 400)
}
