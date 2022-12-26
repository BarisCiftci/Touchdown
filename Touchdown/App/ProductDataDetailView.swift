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
                .zIndex(1)
            //: DETAIL BUTTOM PART
            VStack(alignment: .center, spacing: 0, content: {
                
                //: RATING + SIZES
                RatingsSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                
                //: DESCRIPTION
                ScrollView(.vertical, showsIndicators: false,content: {
                    Text(sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                })//: SCROLL
                
                //: QUANTITY + FAVORITE
                QuantityFavoriteDetailView()
                    .padding(.vertical, 10)
                //: ADD TO CART
                AddToCartDetailView()
                    .padding(.bottom, 20)
                
            })//: VSTACK
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -105)
            )
        })//: VSTACK
        .zIndex(0)
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
