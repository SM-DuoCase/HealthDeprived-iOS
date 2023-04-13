//
//  HealthKitRepository.swift
//  HealthDeprived
//
//  Created by Josian van Efferen on 08/04/2023.
//

import Foundation
import HealthKit

class HealthKitRepository {
    var healthStore: HKHealthStore
    
    init (_healthStore: HKHealthStore) {
        healthStore = _healthStore
    }
    
    
    
}
