//
//  ProductView.swift
//  Shops
//
//  Created by Maxim Granchenko on 02.02.2021.
//

import SwiftUI

struct ProductView: View {
    var body: some View {
        VStack {
            TitleView(title: "Helmet")
            
            LazyVGrid(columns: VGridLayour, spacing: 15, content: {
                ForEach(products) { product in
                    ProductItemView(product: product)
                }
            })
        }
        .padding(15)
    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
