//
//  Factory.swift
//  HealthDeprived
//
//  Created by Josian van Efferen on 05/04/2023.
//

import Foundation
import HealthKit

class Factory {
    var healthStore: HKHealthStore?
    var homeViewModel: HomeViewModel?
    var homeDataModel: HomeDataModel?
    var healthKitRepository: HealthKitRepository?
    
    init (){
        
    }
    
    func generateClasses(_healthStore: HKHealthStore) {
        healthStore = _healthStore
        homeDataModel = HomeDataModel()
        let _factory = self
        homeViewModel = HomeViewModel(factory: _factory)
        healthKitRepository = HealthKitRepository(_healthStore: _healthStore)
    }
    func provideHomeViewModel() -> HomeViewModel {
        return homeViewModel!
    }
    
    func provideHomeDataModel() -> HomeDataModel {
        return homeDataModel!
    }
    
    func provideHealthStore() -> HKHealthStore {
        return healthStore!
    }
    
    func provideHealthKitRepository() -> HealthKitRepository {
        return healthKitRepository!
    }
}
