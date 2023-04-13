//
//  HomeViewModel.swift
//  HealthDeprived
//
//  Created by Josian van Efferen on 03/04/2023.
//

import Foundation
import SwiftUI
import HealthKit

class HomeViewModel: ObservableObject {
    @Published var dataModel: HomeDataModel
    let healthStore: HKHealthStore
    let factory: Factory
    
    init(factory: Factory) {
        self.dataModel = factory.provideHomeDataModel()
        self.healthStore = factory.provideHealthStore()
        self.factory = factory
    }
    
    func updateUi() {
        updateSleepWidget()
        updateHeartWidget()
        updateRestingHeartWidget()
        updateHydration()
    }
    
    func updateSleepWidget() {
        guard let sampleType = HKSampleType.categoryType(forIdentifier: .sleepAnalysis) else {
            fatalError("*** This method should never fail ***")
        }
        
        let predicate = HKQuery.predicateForSamples(withStart: Date.init(timeIntervalSinceNow: -86400), end: Date.now, options: .strictStartDate)
        
        let query = HKSampleQuery(sampleType: sampleType, predicate: predicate, limit: Int(HKObjectQueryNoLimit), sortDescriptors: nil) {
            query, results, error in
            //print(results)
            guard let samples = results as? [HKCategorySample] else {
                print(error)
                return
            }
            var timeAsleep: Double = 0
            samples
                //.compactMap({ $0 as? HKCategorySample })
                .forEach({ sample in
                    guard let sleepValue = HKCategoryValueSleepAnalysis(rawValue: sample.value) else {
                        return
                    }
                    
                    let isAsleep = sleepValue == .asleepCore
                    
                    if (!sample.sourceRevision.productType!.contains("iPhone") && sleepValue.rawValue != 0) {
                        let distanceBetweenDates:TimeInterval = sample.endDate.timeIntervalSince(sample.startDate)
                        let minutesInAnHour:Double = 60;
                        let minutesBetweenDates:Double = distanceBetweenDates / minutesInAnHour;
                        timeAsleep += minutesBetweenDates
                        //print("HealthKit sleep \(sample.startDate) \(sample.endDate) - source \(sample.sourceRevision.productType) - \(sleepValue.rawValue)")

                    }
                    
                })
            
            let hoursAsleep: Int = Int(floor(timeAsleep/60))
            let minutesAsleep: Int = Int(ceil(timeAsleep-(floor(timeAsleep/60)*60)))
            let color: Color
            switch timeAsleep {
                case  0...360:
                    color = Color(UIColor.systemRed)
                case 360...420:
                    color = Color(UIColor.systemYellow)
                case 420...540:
                    color = Color(UIColor.systemGreen)
                case 540...600:
                    color = Color(UIColor.systemYellow)
                default:
                    color = Color(UIColor.systemRed)
            }
            
            DispatchQueue.main.async {
                self.dataModel.minutesAsleep = minutesAsleep
                self.dataModel.hoursAsleep = hoursAsleep
                self.dataModel.colorSleep = color
            }
        }
        healthStore.execute(query)
    }
    
    
    
    func updateHeartWidget() {
        guard let sampleType = HKSampleType.quantityType(forIdentifier: .heartRate) else {
            fatalError("*** This method should never fail ***")
        }
        
        let predicate = HKQuery.predicateForSamples(withStart: Date.init(timeIntervalSinceNow: -86400), end: Date.now, options: .strictStartDate)
        let sortDescriptor = NSSortDescriptor(key: HKSampleSortIdentifierStartDate, ascending: false)
        
        let query = HKSampleQuery(sampleType: sampleType, predicate: predicate, limit: Int(HKObjectQueryNoLimit), sortDescriptors: [sortDescriptor]) {
            query, results, error in
            //print(results)
            guard let samples = results as? [HKQuantitySample] else {
                print(error)
                return
            }
            var averageRate: Int = 0
            samples.forEach({ sample in
                    let heartRateUnit = HKUnit.count().unitDivided(by: HKUnit.minute())
                    let heartRate = Int(sample.quantity.doubleValue(for: heartRateUnit))
                    //print(heartRate)
                    averageRate += heartRate
                })
            averageRate = averageRate / samples.count
            let color: Color
            switch averageRate {
                case  0...20:
                    color = Color(UIColor.systemRed)
                case 20...40:
                    color = Color(UIColor.systemYellow)
                case 40...90:
                    color = Color(UIColor.systemGreen)
                case 90...120:
                    color = Color(UIColor.systemYellow)
                default:
                    color = Color(UIColor.systemRed)
            }
            
            DispatchQueue.main.async {
                self.dataModel.heartRate = averageRate
                self.dataModel.colorHeart = color
            }
        }
        healthStore.execute(query)
    }
    
    func updateRestingHeartWidget() {
        guard let sampleType = HKSampleType.quantityType(forIdentifier: .restingHeartRate) else {
            fatalError("*** This method should never fail ***")
        }
        
        let predicate = HKQuery.predicateForSamples(withStart: Date.init(timeIntervalSinceNow: -86400*2), end: Date.now, options: .strictStartDate)
        let sortDescriptor = NSSortDescriptor(key: HKSampleSortIdentifierStartDate, ascending: false)
        
        let query = HKSampleQuery(sampleType: sampleType, predicate: predicate, limit: Int(HKObjectQueryNoLimit), sortDescriptors: [sortDescriptor]) {
            query, results, error in
            //print(results)
            guard let samples = results as? [HKQuantitySample] else {
                print(error)
                return
            }
            var averageRate: Int = 0
            samples.forEach({ sample in
                    let heartRateUnit = HKUnit.count().unitDivided(by: HKUnit.minute())
                    let heartRate = Int(sample.quantity.doubleValue(for: heartRateUnit))
                    print(heartRate)
                    averageRate += heartRate
                })
            
            if (!samples.isEmpty) {
                averageRate = averageRate / samples.count
                print(averageRate)
            }
            
            let color: Color
            switch averageRate {
                case  0...20:
                    color = Color(UIColor.systemRed)
                case 20...60:
                    color = Color(UIColor.systemYellow)
                case 60...100:
                    color = Color(UIColor.systemGreen)
                case 90...110:
                    color = Color(UIColor.systemYellow)
                default:
                    color = Color(UIColor.systemRed)
            }
            
            
            DispatchQueue.main.async {
                self.dataModel.restingHeartRate = averageRate
                self.dataModel.colorRestingHeart = color
            }
        }
        healthStore.execute(query)
    }
    
    
    func updateHydration() {
        guard let sampleType = HKSampleType.quantityType(forIdentifier: .dietaryWater) else {
            fatalError("*** This method should never fail ***")
        }
        
        let predicate = HKQuery.predicateForSamples(withStart: Date.init(timeIntervalSinceNow: -86400), end: Date.now, options: .strictStartDate)
        let sortDescriptor = NSSortDescriptor(key: HKSampleSortIdentifierStartDate, ascending: false)
        
        let query = HKSampleQuery(sampleType: sampleType, predicate: predicate, limit: Int(HKObjectQueryNoLimit), sortDescriptors: [sortDescriptor]) {
            query, results, error in
            //print(results)
            guard let samples = results as? [HKQuantitySample] else {
                print(error)
                return
            }
            var total: Double = 0
            samples.forEach({ sample in
                    //print(sample)
                   // print(sample.quantity.doubleValue(for: HKUnit.liter()))
                    total += sample.quantity.doubleValue(for: HKUnit.literUnit(with: .milli))
                })
            total = total.rounded(.toNearestOrAwayFromZero)
            print(total)
            
            let color: Color
            switch total {
                case  0...1000:
                    color = Color(UIColor.systemRed)
                case 1000...1500:
                    color = Color(UIColor.systemYellow)
                case 1500...2500:
                    color = Color(UIColor.systemGreen)
                default:
                    color = Color(UIColor.systemGreen)
            }
            
            
            DispatchQueue.main.async {
                self.dataModel.amountHydration = Int(total)
                self.dataModel.colorHydration = color
            }
        }
        healthStore.execute(query)
    }
    
    
    
}
