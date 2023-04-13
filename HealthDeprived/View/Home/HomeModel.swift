//
//  HomeModel.swift
//  HealthDeprived
//
//  Created by Josian van Efferen on 03/04/2023.
//

import Foundation
import SwiftUI

class HomeDataModel: ObservableObject {
    @Published var hoursAsleep: Int
    @Published var minutesAsleep: Int
    @Published var colorSleep: Color
    
    @Published var heartRate: Int
    @Published var colorHeart: Color
    
    @Published var restingHeartRate: Int
    @Published var colorRestingHeart: Color
    
    @Published var amountHydration: Int
    @Published var colorHydration: Color
    
    @Published var move: Int
    @Published var colorMove: Color
    
    @Published var exercise: Int
    @Published var colorExercise: Color
    
    @Published var stand: Int
    @Published var colorStand: Color
    
    @Published var colorActivity: Color
        
    init() {
        hoursAsleep = 0
        minutesAsleep = 0
        colorSleep = Color(UIColor.systemRed)
        heartRate = 0
        colorHeart = Color(UIColor.systemRed)
        restingHeartRate = 0
        colorRestingHeart = Color(UIColor.systemRed)
        amountHydration = 0
        colorHydration = Color(UIColor.systemRed)
        move = 0
        colorMove = Color(UIColor.systemRed)
        exercise = 0
        colorExercise = Color(UIColor.systemRed)
        stand = 0
        colorStand = Color(UIColor.systemRed)
        colorActivity = Color(UIColor.systemRed)
    }
}
