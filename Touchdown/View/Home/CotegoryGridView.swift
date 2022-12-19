//
//  CotegoryGridView.swift
//  Touchdown
//
//  Created by Baris Ciftci on 19/12/2022.
//

import SwiftUI

struct CotegoryGridView: View {
    // MARK: - PROPERTY
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: [], content: {
                Section(
                    header: SectionView(rotateClockwise: false),
                    footer: SectionView(rotateClockwise: true)
                ) {
                    ForEach(categories) { category in
                        CategoryItemView(category: category)
                    }
                }
            })//: GRID
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        })//: SCROLL
    }
}
// MARK: - PREVIEW
struct CotegoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CotegoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
