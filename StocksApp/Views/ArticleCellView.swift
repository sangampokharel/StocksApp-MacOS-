//
//  ArticleCellView.swift
//  StocksApp
//
//  Created by sangam pokharel on 24/09/2025.
//

import SwiftUI

struct ArticleCellView: View {
    let article:StockArticleViewModel
    var body: some View {
        VStack(alignment:.leading,spacing:8) {
            AsyncImage(url: article.urlToImage) { image in
                image.resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(maxWidth: .infinity,maxHeight: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 10,style: .continuous))
            } placeholder: {
                Image(systemName: "list.clipboard")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity,maxHeight: 200)
            }
            
            Text(article.source)
            Text(article.title)
                .font(.title)
                .fontWeight(.bold)

        }
    }
}

