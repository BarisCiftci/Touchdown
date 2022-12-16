//
//  NavigationBarView.swift
//  Touchdown
//
//  Created by Baris Ciftci on 16/12/2022.
//

import SwiftUI

struct NavigationBarView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Button(action: {}, label:{
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            })//: BUTTON - Search
            
            Spacer()
            
            LogoView()
           
            Spacer()
            
            Button(action: {}, label: {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundColor(.black)
                    
                    Circle()
                        .fill(Color.red)
                        .frame(width: 14, height: 14,  alignment: .center)
                        .offset(x: 13, y: -10)
                }
            })//: BUTTON - Cart
            
            
            
        }//: HSTACK
    }
}
// MARK: - PREVIEW
struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
