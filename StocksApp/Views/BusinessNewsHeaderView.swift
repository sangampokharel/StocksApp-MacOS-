//
//  BusinessNewsHeaderView.swift
//  StocksApp
//
//  Created by sangam pokharel on 24/09/2025.
//

import SwiftUI

struct BusinessNewsHeaderView: View {
    var body: some View {
        VStack(alignment: .leading,spacing: 4) {
            Text("Business News")
                .font(.title)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity,alignment: .leading)
            Text("From  News")
                .font(.caption2)
                .opacity(0.4)
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.gray.opacity(0.4))
        .clipShape(RoundedRectangle(cornerRadius: 6))
    }
}

#Preview {
    BusinessNewsHeaderView()
}
