//
//  TouchDownAppApp.swift
//  TouchDownApp
//
//  Created by Michael Camp on 4/21/21.
//

import SwiftUI

@main
struct TouchDownAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
