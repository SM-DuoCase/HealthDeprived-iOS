//
//  HealthDeprivedApp.swift
//  HealthDeprived
//
//  Created by Josian van Efferen on 22/03/2023.
//

import SwiftUI

@main
struct HealthDeprivedApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                HomeView()
                    .tabItem {
                        Label("Home", systemImage: "house.fill")
                    }
                    .preferredColorScheme(.light)

                SettingsView()
                    .tabItem {
                        Label("Settings", systemImage: "slider.vertical.3")
                    }
                    .preferredColorScheme(.light)
                
            }
            
        }
    }
}
