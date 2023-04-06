//
//  SettingsModel.swift
//  HealthDeprived
//
//  Created by Josian van Efferen on 03/04/2023.
//

import Foundation


struct PersonalData: Codable {
    let firstName: String
    let lastName: String
    let dateOfBirth: String
    let sex: String
    let weigthInKg: Int
    let heightInCm: Int
}
