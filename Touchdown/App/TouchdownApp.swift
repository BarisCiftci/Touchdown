//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Baris Ciftci on 16/12/2022.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
