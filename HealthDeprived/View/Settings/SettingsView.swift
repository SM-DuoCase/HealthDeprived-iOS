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
                    personalDataSettings(personalData: PersonalData(firstName: "Josian", lastName: "van Efferen", dateOfBirth: "29 Jan 2004 (19)", sex: "Male", weigthInKg: 70, heightInCm: 180))
                    Spacer().frame(minHeight: 20)
                }
                .navigationTitle("Settings")
                //.padding(.horizontal, 20)
                .padding(.top, 20.0)
                //.padding(.bottom, 20)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 900)
            }
            .background(Color(UIColor.secondarySystemBackground))
        }
    }
}


private struct personalDataSettings: View {
    let personalData: PersonalData
    var body: some View {
        List {
            Section(header: Text("Personal Health Data")) {
                HStack {
                    Text("First Name")
                    Spacer()
                    Text(personalData.firstName)
                }
                
                HStack {
                    Text("Last Name")
                    Spacer()
                    Text(personalData.lastName)
                }
                
                HStack {
                    Text("Date of Birth")
                    Spacer()
                    Text(personalData.dateOfBirth)
                }
                
                HStack {
                    Text("Sex")
                    Spacer()
                    Text(personalData.sex)
                }
                
                HStack {
                    Text("Weigth")
                    Spacer()
                    Text(String(personalData.weigthInKg) + " kg")
                }
                
                HStack {
                    Text("Height")
                    Spacer()
                    Text(String(personalData.heightInCm) + " cm")
                }
            }

        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
