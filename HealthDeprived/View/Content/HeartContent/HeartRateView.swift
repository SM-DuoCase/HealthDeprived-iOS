//
//  HeartRateView.swift
//  HealthDeprived
//
//  Created by Niels Feijen on 03/04/2023.
//

import SwiftUI

struct HeartRateView: View {
    var body: some View {
        NavigationStack {
            ScrollView(.vertical) {
                VStack(alignment: .leading){
                    HeartRateContent()
                    RestingHeartRateContent()
                }
                .frame(minWidth: 0, maxWidth: .infinity)
                .navigationTitle("Heart Rate")
                .padding(.horizontal, 20)
                .padding(.top, 20.0)
            }
            .background(Color(UIColor.secondarySystemBackground))
        }
    }
}

private struct HeartRateContent: View{
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack {
                Label("Heart Rate Summary", systemImage: "heart.fill")
                    .font(.headline)
                    .foregroundColor(Color(UIColor.systemGreen))
                .padding([.horizontal], 15)
                .padding(.top, 10)
               
            }
            
            HStack {
                VStack(alignment: .leading) {
                    HStack {
                        Text("Normal Heartrate Graph")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(Color(UIColor.label))
                    }
                    
                    Divider()
                    
                }
                .padding(.horizontal, 15)
                .padding(.top, 1)
                
            
            }.padding(.bottom, 5)
            
            HStack{
                VStack(alignment: .leading){
                    HStack{
                        Text("121")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(Color(UIColor.label))
                        + Text("BPM")
                            .font(.body)
                            .fontWeight(.medium)
                            .foregroundColor(Color(UIColor.secondaryLabel))
                                   
                    }
                    Text("Currently")
                        .foregroundColor(Color(UIColor.secondaryLabel))
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    
                }
                .padding(.horizontal, 15)
                .padding(.top, 1)
                
                Divider()
                
                VStack(alignment: .leading){
                    HStack{
                        Text("142")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(Color(UIColor.label))
                        + Text("BPM")
                            .font(.body)
                            .fontWeight(.medium)
                            .foregroundColor(Color(UIColor.secondaryLabel))
                        
                    }
                    Text("Walking Heart Rate")
                        .foregroundColor(Color(UIColor.secondaryLabel))
                        .font(.subheadline)
                        .fontWeight(.semibold)
                }
                .padding(.horizontal, 15)
                .padding(.top, 1)
                
                
            }
            Spacer()
            
        }
        .frame(
          minWidth: 0,
          maxWidth: .infinity,
          alignment: .leading
        )
        .background(Color(UIColor.systemBackground), ignoresSafeAreaEdges: [])
        .cornerRadius(10)
        
    }
    
}

private struct RestingHeartRateContent: View{
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack {
                Label("Resting Heart Rate Summary", systemImage: "heart.fill")
                    .font(.headline)
                    .foregroundColor(Color(UIColor.systemGreen))
                .padding([.horizontal], 15)
                .padding(.top, 10)
               
            }
            
            HStack {
                VStack(alignment: .leading) {
                    HStack {
                        Text("Resting heartrate Graph")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(Color(UIColor.label))
                    }
                    
                    Divider()
                    
                }
                .padding(.horizontal, 15)
                .padding(.top, 1)
                
            
            }.padding(.bottom, 5)
            
            HStack{
                VStack(alignment: .leading){
                    HStack{
                        Text("62")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(Color(UIColor.label))
                        + Text("BPM")
                            .font(.body)
                            .fontWeight(.medium)
                            .foregroundColor(Color(UIColor.secondaryLabel))
                        
                    }
                    Text("Last 2 days")
                        .foregroundColor(Color(UIColor.secondaryLabel))
                        .font(.subheadline)
                        .fontWeight(.semibold)
                }
                .padding(.horizontal, 15)
                .padding(.top, 1)
                
                Divider()
                
                VStack(alignment: .leading){
                    HStack{
                        Text("142")
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
            }
            Spacer()
            
        }
        .frame(
          minWidth: 0,
          maxWidth: .infinity,
          alignment: .leading
        )
        .background(Color(UIColor.systemBackground), ignoresSafeAreaEdges: [])
        .cornerRadius(10)
        .padding(.top, 15)
        
    }
    
}

struct HeartRateView_Previews: PreviewProvider {
    static var previews: some View {
        HeartRateView()
    }
}
