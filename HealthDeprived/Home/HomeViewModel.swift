//
//  HomeViewModel.swift
//  HealthDeprived
//
//  Created by Josian van Efferen on 03/04/2023.
//

import Foundation
import HealthKit

class HomeViewModel: ObservableObject {
    let data: HomeDataModel
    let healthStore: HKHealthStore
    let factory: Factory
    
    init(factory: Factory) {
        self.data = factory.provideHomeDataModel()
        self.healthStore = factory.provideHealthStore()
        self.factory = factory
    }
    
    func updateUi() {
        updateSleepWidget()
        update()
    }
    
    func updateSleepWidget() {
        guard let sampleType = HKSampleType.categoryType(forIdentifier: .sleepAnalysis) else {
            fatalError("*** This method should never fail ***")
        }
        print("Test")
        
        let predicate = HKQuery.predicateForSamples(withStart: Date.init(timeIntervalSinceNow: -86400), end: Date.now, options: .strictStartDate)
        
        let query = HKSampleQuery(sampleType: sampleType, predicate: predicate, limit: Int(HKObjectQueryNoLimit), sortDescriptors: nil) {
            query, results, error in
            //print(results)
            guard let samples = results as? [HKCategorySample] else {
                print(error)
                return
            }
            //print(samples)
            print("Test 2")
            for sample in samples {
//                print(sample.value(forKey: <#T##String#>))
            }
            
            // The results come back on an anonymous background queue.
            // Dispatch to the main queue before modifying the UI.
            
            DispatchQueue.main.async {
                // Update the UI here.
            }
        }
        
        healthStore.execute(query)
    }
    
    func update() {
        do {
            try data.hoursAsleep = healthStore.biologicalSex().biologicalSex.rawValue
        }
        catch {
            print("Error")
        }
        
    }
}
