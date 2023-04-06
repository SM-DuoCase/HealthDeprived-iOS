//
//  HomeView.swift
//  HealthDeprived
//
//  Created by Josian van Efferen on 30/03/2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            ScrollView(.vertical) {
                VStack(alignment: .leading) {
                    sleepWidget()
                    heartWidget()
                    restingHeartWidget()
                    hydration()
                    activityWidget()
                    Spacer().frame(minHeight: 20)
                }
                .frame(minWidth: 0, maxWidth: .infinity)
                .navigationTitle("Home")
                .padding(.horizontal, 20)
                .padding(.top, 20.0)
            }
            .background(Color(UIColor.secondarySystemBackground))
        }
    }
}

private struct sleepWidget: View {
    var body: some View {
        NavigationLink{
            SleepContentView()  
        } label: {
            VStack(alignment: .leading) {
                
                HStack {
                    Label("Sleep", systemImage: "bed.double.fill")
                        .font(.headline)
                        .foregroundColor(Color(UIColor.systemGreen))
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
                            Text("8")
                                .font(.title)
                                .fontWeight(.semibold)
                                .foregroundColor(Color(UIColor.label))
                            + Text("hr")
                                .font(.body)
                                .fontWeight(.medium)
                                .foregroundColor(Color(UIColor.secondaryLabel))
                            
                            Text("23")
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
                    
                    Image(systemName: "poweroutlet.type.k.fill")
                        .font(.largeTitle)
                        .foregroundColor(Color(UIColor.systemGreen))
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
    var body: some View {
        NavigationLink{
            HeartRateView()
        } label: {
            VStack(alignment: .leading) {
                
                HStack {
                    Label("Heart Rate", systemImage: "heart.fill")
                        .font(.headline)
                        .foregroundColor(Color(UIColor.systemGreen))
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
                            Text("89")
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
                    
                    Image(systemName: "poweroutlet.type.k.fill")
                        .font(.largeTitle)
                        .foregroundColor(Color(UIColor.systemGreen))
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
    var body: some View {
        NavigationLink{
            HeartRateView()
        } label: {
            VStack(alignment: .leading) {
                
                HStack {
                    Label("Resting Heart Rate", systemImage: "heart.fill")
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
                            Text("85")
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


private struct hydration: View {
    var body: some View {
        NavigationLink{
            HydrationView()
        } label: {
            VStack(alignment: .leading) {
                
                HStack {
                    Label("Hydration", systemImage: "drop.fill")
                        .font(.headline)
                        .foregroundColor(Color(UIColor.systemRed))
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
                            Text("250")
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
                    
                    Image(systemName: "poweroutlet.type.i.fill")
                        .font(.largeTitle)
                        .foregroundColor(Color(UIColor.systemRed))
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




struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
