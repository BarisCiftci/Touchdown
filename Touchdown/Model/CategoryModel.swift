//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Baris Ciftci on 19/12/2022.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
