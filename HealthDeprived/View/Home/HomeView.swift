//
//  HomeView.swift
//  HealthDeprived
//
//  Created by Josian van Efferen on 30/03/2023.
//

import SwiftUI
import HealthKit


struct HomeView: View {
    private var vm: HomeViewModel
    private var dataModel: HomeDataModel
    private var factory: Factory

    init(_factory: Factory) {
        factory = _factory
        self.dataModel = _factory.provideHomeDataModel()
        self.vm = _factory.provideHomeViewModel()
    }
    
    var body: some View {
        NavigationStack {
            ScrollView(.vertical) {
                VStack(alignment: .leading) {
                    sleepWidget(data: dataModel)
                    heartWidget(data: dataModel)
                    restingHeartWidget(data: dataModel)
                    hydration(data: dataModel)
                    activityWidget()
                    Spacer().frame(minHeight: 20)
                }
                .frame(minWidth: 0, maxWidth: .infinity)
                .navigationTitle("Home")
                .padding(.horizontal, 20)
                .padding(.top, 20.0)
            }
            .background(Color(UIColor.secondarySystemBackground))
        }.onAppear() {
            vm.updateUi()
        }
    }
}

private func getSmiley(color: Color) -> String {
    if (color == Color(UIColor.systemRed)) {
        return "poweroutlet.type.i.fill"
    }
    else if (color == Color(UIColor.systemYellow)) {
        return "poweroutlet.type.b.fill"
    }
    else {
        return "poweroutlet.type.k.fill"
    }
}

private struct sleepWidget: View {
    @ObservedObject var data: HomeDataModel
    var body: some View {
        NavigationLink{
            SleepContentView()  
        } label: {
            VStack(alignment: .leading) {
                
                HStack {
                    Label("Sleep", systemImage: "bed.double.fill")
                        .font(.headline)
                        .foregroundColor(data.colorSleep)
                    .padding([.horizontal], 15)
                    .padding(.top, 10)
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundColor(Color(UIColor.systemGray4))
                        .padding([.horizontal, .top], 10)
                }
                
                HStack {
                    VStack(alignment: .leading) {
                        HStack {
                            Text(String(data.hoursAsleep))
                                .font(.title)
                                .fontWeight(.semibold)
                                .foregroundColor(Color(UIColor.label))
                            + Text("hr")
                                .font(.body)
                                .fontWeight(.medium)
                                .foregroundColor(Color(UIColor.secondaryLabel))
                            
                            Text(String(data.minutesAsleep))
                                .font(.title)
                                .fontWeight(.semibold)
                                .foregroundColor(Color(UIColor.label))
                            + Text("min")
                                .font(.body)
                                .fontWeight(.medium)
                                .foregroundColor(Color(UIColor.secondaryLabel))
                                                        
                        }
                            
                        Text("Time Asleep")
                            .foregroundColor(Color(UIColor.secondaryLabel))
                            .font(.subheadline)
                            .fontWeight(.semibold)
                    }
                    .padding(.horizontal, 15)
                    .padding(.top, 1)
                    
                    Spacer()
                    
                    Image(systemName: getSmiley(color: data.colorSleep))
                        .font(.largeTitle)
                        .foregroundColor(data.colorSleep)
                        .padding(.trailing, 10)
                    
                }.padding(.bottom, 5)
                
            }
            .frame(
              minWidth: 0,
              maxWidth: .infinity,
              alignment: .leading
            )
            .background(Color(UIColor.systemBackground), ignoresSafeAreaEdges: [])
            .cornerRadius(10)
        }
        .frame(
          minWidth: 0,
          maxWidth: .infinity,
          alignment: .leading)
        .padding(.top, 5)
        
    }
}


private struct heartWidget: View {
    @ObservedObject var data: HomeDataModel
    var body: some View {
        NavigationLink{
            HeartRateView()
        } label: {
            VStack(alignment: .leading) {
                
                HStack {
                    Label("Heart Rate", systemImage: "heart.fill")
                        .font(.headline)
                        .foregroundColor(data.colorHeart)
                    .padding([.horizontal], 15)
                    .padding(.top, 10)
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundColor(Color(UIColor.systemGray4))
                        .padding([.horizontal, .top], 10)
                }
                
                HStack {
                    VStack(alignment: .leading) {
                        HStack {
                            Text(String(data.heartRate))
                                .font(.title)
                                .fontWeight(.semibold)
                                .foregroundColor(Color(UIColor.label))
                            + Text("BPM")
                                .font(.body)
                                .fontWeight(.medium)
                                .foregroundColor(Color(UIColor.secondaryLabel))
                                                        
                        }
                            
                        Text("Average")
                            .foregroundColor(Color(UIColor.secondaryLabel))
                            .font(.subheadline)
                            .fontWeight(.semibold)
                    }
                    .padding(.horizontal, 15)
                    .padding(.top, 1)
                    
                    Spacer()
                    
                    Image(systemName: getSmiley(color: data.colorHeart))
                        .font(.largeTitle)
                        .foregroundColor(data.colorHeart)
                        .padding(.trailing, 10)
                    
                }.padding(.bottom, 5)
                
            }
            .frame(
              minWidth: 0,
              maxWidth: .infinity,
              alignment: .leading
            )
            .background(Color(UIColor.systemBackground), ignoresSafeAreaEdges: [])
            .cornerRadius(10)
        }
        .frame(
          minWidth: 0,
          maxWidth: .infinity,
          alignment: .leading)
        .padding(.top, 5)
        
    }
}


private struct restingHeartWidget: View {
    @ObservedObject var data: HomeDataModel
    var body: some View {
        NavigationLink{
            HeartRateView()
        } label: {
            VStack(alignment: .leading) {
                
                HStack {
                    Label("Resting Heart Rate", systemImage: "heart.fill")
                        .font(.headline)
                        .foregroundColor(data.colorRestingHeart)
                    .padding([.horizontal], 15)
                    .padding(.top, 10)
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundColor(Color(UIColor.systemGray4))
                        .padding([.horizontal, .top], 10)
                }
                
                HStack {
                    VStack(alignment: .leading) {
                        HStack {
                            Text(String(data.restingHeartRate))
                                .font(.title)
                                .fontWeight(.semibold)
                                .foregroundColor(Color(UIColor.label))
                            + Text("BPM")
                                .font(.body)
                                .fontWeight(.medium)
                                .foregroundColor(Color(UIColor.secondaryLabel))
                                                        
                        }
                            
                        Text("Average")
                            .foregroundColor(Color(UIColor.secondaryLabel))
                            .font(.subheadline)
                            .fontWeight(.semibold)
                    }
                    .padding(.horizontal, 15)
                    .padding(.top, 1)
                    
                    Spacer()
                    
                    Image(systemName: getSmiley(color: data.colorRestingHeart))
                        .font(.largeTitle)
                        .foregroundColor(data.colorRestingHeart)
                        .padding(.trailing, 10)
                    
                }.padding(.bottom, 5)
                
            }
            .frame(
              minWidth: 0,
              maxWidth: .infinity,
              alignment: .leading
            )
            .background(Color(UIColor.systemBackground), ignoresSafeAreaEdges: [])
            .cornerRadius(10)
        }
        .frame(
          minWidth: 0,
          maxWidth: .infinity,
          alignment: .leading)
        .padding(.top, 5)
        
    }
}


private struct hydration: View {
    @ObservedObject var data: HomeDataModel
    var body: some View {
        NavigationLink{
            HydrationView()
        } label: {
            VStack(alignment: .leading) {
                
                HStack {
                    Label("Hydration", systemImage: "drop.fill")
                        .font(.headline)
                        .foregroundColor(data.colorHydration)
                    .padding([.horizontal], 15)
                    .padding(.top, 10)
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundColor(Color(UIColor.systemGray4))
                        .padding([.horizontal, .top], 10)
                }
                
                HStack {
                    VStack(alignment: .leading) {
                        HStack {
                            Text(String(data.amountHydration))
                                .font(.title)
                                .fontWeight(.semibold)
                                .foregroundColor(Color(UIColor.label))
                            + Text("ML")
                                .font(.body)
                                .fontWeight(.medium)
                                .foregroundColor(Color(UIColor.secondaryLabel))
                                                        
                        }
                            
                    }
                    .padding(.horizontal, 15)
                    .padding(.top, 1)
                    
                    Spacer()
                    
                    Image(systemName: getSmiley(color: data.colorHydration))
                        .font(.largeTitle)
                        .foregroundColor(data.colorHydration)
                        .padding(.trailing, 10)
                    
                }.padding(.bottom, 5)
                
            }
            .frame(
              minWidth: 0,
              maxWidth: .infinity,
              alignment: .leading
            )
            .background(Color(UIColor.systemBackground), ignoresSafeAreaEdges: [])
            .cornerRadius(10)
        }
        .frame(
          minWidth: 0,
          maxWidth: .infinity,
          alignment: .leading)
        .padding(.top, 5)
        
    }
}



private struct activityWidget: View {
    var body: some View {
        NavigationLink{
            ActivityView()
        } label: {
            VStack(alignment: .leading) {
                
                HStack {
                    Label("Activity", systemImage: "flame.fill")
                        .font(.headline)
                        .foregroundColor(Color(UIColor.systemYellow))
                    .padding([.horizontal], 15)
                    .padding(.top, 10)
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundColor(Color(UIColor.systemGray4))
                        .padding([.horizontal, .top], 10)
                }
                
                HStack {
                    VStack(alignment: .leading) {
                        HStack {
                            Text("181")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .foregroundColor(Color(UIColor.systemYellow))
                            + Text("kcal")
                                .font(.subheadline)
                                .fontWeight(.medium)
                                .foregroundColor(Color(UIColor.systemYellow))
                                                        
                        }
                            
                        Text("Move")
                            .foregroundColor(Color(UIColor.secondaryLabel))
                            .font(.subheadline)
                            .fontWeight(.semibold)
                    }
                    .padding(.horizontal, 15)
                    .padding(.top, 1)
                    
                    Divider()
                    
                    VStack(alignment: .leading) {
                        HStack {
                            Text("33")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .foregroundColor(Color(UIColor.systemGreen))
                            + Text("min")
                                .font(.subheadline)
                                .fontWeight(.medium)
                                .foregroundColor(Color(UIColor.systemGreen))
                                                        
                        }
                            
                        Text("Exercise")
                            .foregroundColor(Color(UIColor.secondaryLabel))
                            .font(.subheadline)
                            .fontWeight(.semibold)
                    }
                    .padding(.horizontal, 15)
                    .padding(.top, 1)
                    
                    Divider()

                    VStack(alignment: .leading) {
                        HStack {
                            Text("2")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .foregroundColor(Color(UIColor.systemRed))
                            + Text("h")
                                .font(.subheadline)
                                .fontWeight(.medium)
                                .foregroundColor(Color(UIColor.systemRed))
                                                        
                        }
                            
                        Text("Stand")
                            .foregroundColor(Color(UIColor.secondaryLabel))
                            .font(.subheadline)
                            .fontWeight(.semibold)
                    }
                    .padding(.horizontal, 15)
                    .padding(.top, 1)
                    
                    
                    Spacer()
                    
                    Image(systemName: "poweroutlet.type.b.fill")
                        .font(.largeTitle)
                        .foregroundColor(Color(UIColor.systemYellow))
                        .padding(.trailing, 10)
                    
                }.padding(.bottom, 5)
                
            }
            .frame(
              minWidth: 0,
              maxWidth: .infinity,
              alignment: .leading
            )
            .background(Color(UIColor.systemBackground), ignoresSafeAreaEdges: [])
            .cornerRadius(10)
        }
        .frame(
          minWidth: 0,
          maxWidth: .infinity,
          alignment: .leading)
        .padding(.top, 5)
        
    }
}




//struct HomeView_Previews: PreviewProvider {
//    var healthStore: HKHealthStore = HKHealthStore()
//    let factory: Factory = Factory()
//    factory.generateClasses(_healthStore: healthStore)
//    static var previews: some View {
//        HomeView(factory: factory)
//    }
//}
