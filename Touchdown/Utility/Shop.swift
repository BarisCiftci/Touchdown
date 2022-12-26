//
//  Shop.swift
//  Touchdown
//
//  Created by Baris Ciftci on 26/12/2022.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
