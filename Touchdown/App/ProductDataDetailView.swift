//
//  ProductDataDetailView.swift
//  Touchdown
//
//  Created by Baris Ciftci on 25/12/2022.
//

import SwiftUI

struct ProductDataDetailView: View {
    // MARK: - PROPERTY
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            //: NAVBAR
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            //: HEADER
            HeaderDetailView()
                .padding(.horizontal)
            
            //: DETAIL TOP PART
            TopPartDetailView()
                .padding(.horizontal)
            //: DETAIL BUTTOM PART
            //: RATING + SIZES
            //: DESCRIPTION
            //: QUANTITY + FAVORITE
            //: ADD TO CART
            Spacer()

        })//: VSTACK
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(
                red: sampleProduct.red,
                green: sampleProduct.green,
                blue: sampleProduct.green
            ).ignoresSafeArea(.all, edges: .all)
        )
    }
}
// MARK: - PREVIEW
struct ProductDataDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDataDetailView()
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
