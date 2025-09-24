//
//  StocksAppApp.swift
//  StocksApp
//
//  Created by sangam pokharel on 24/09/2025.
//

import SwiftUI

@main
struct StocksApp: App {
    var body: some Scene {
        WindowGroup {
          HomeScreen()
                .frame(minWidth: 600,minHeight: 400)
                .environmentObject(AppState())
        }
    }
}
