//
//  TrekrApp.swift
//  Trekr
//
//  Created by Lukasz Zajac on 22/12/2020.
//

import SwiftUI

@main
struct TrekrApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView(location: Locations().primary)
            }
            
        }
    }
}
