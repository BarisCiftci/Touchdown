//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by Baris Ciftci on 26/12/2022.
//

import SwiftUI

struct AddToCartDetailView: View {
    // MARK: - PROPERTY
    
    // MARK: - BODY
    
    var body: some View {
        Button(action: {}, label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .foregroundColor(.gray)
                .multilineTextAlignment(.leading)
            Spacer()
        })//: BUTTON
                .padding(15)
                .background(
                    Color(
                        red: sampleProduct.red,
                        green: sampleProduct.green,
                        blue: sampleProduct.blue
                )
            )
        .clipShape(Capsule())
    }
}
// MARK: - PREVIEW
struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
