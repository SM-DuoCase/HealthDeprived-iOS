//
//  SettingsView.swift
//  HealthDeprived
//
//  Created by Josian van Efferen on 30/03/2023.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationStack {
            ScrollView(.vertical) {
                VStack(alignment: .leading) {
                    Text("Hello, World")
                    Spacer().frame(minHeight: 20)
                }
                .navigationTitle("Settings")
                .padding(.horizontal, 20)
                .padding(.top, 20.0)
                //.padding(.bottom, 20)
                .background(Color(UIColor.secondarySystemBackground))
            }
            .background(Color(UIColor.secondarySystemBackground))
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
