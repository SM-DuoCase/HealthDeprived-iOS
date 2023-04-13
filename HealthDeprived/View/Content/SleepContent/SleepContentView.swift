//
//  SleepContentView.swift
//  HealthDeprived
//
//  Created by Niels Feijen on 03/04/2023.
//

import SwiftUI

struct SleepContentView: View {
    var body: some View {
        NavigationStack {
            ScrollView(.vertical) {
                VStack(alignment: .leading){
                    SleepSumnmaryCard()
                    SleepGraph()
                }
                .frame(minWidth: 0, maxWidth: .infinity)
                .navigationTitle("Sleep")
                .padding(.horizontal, 20)
                .padding(.top, 20.0)
            }
            .background(Color(UIColor.secondarySystemBackground))
        }
    }
}

private struct SleepSumnmaryCard: View{
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack {
                Label("Sleep Summary", systemImage: "bed.double.fill")
                    .font(.headline)
                    .foregroundColor(Color(UIColor.systemGreen))
                .padding([.horizontal], 15)
                .padding(.top, 10)
               
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
                    
                    Text("Last Night")
                        .foregroundColor(Color(UIColor.secondaryLabel))
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    
                    Divider()
                    
                }
                .padding(.horizontal, 15)
                .padding(.top, 1)
                
            
            }.padding(.bottom, 5)
            
            HStack{
                VStack(alignment: .leading){
                    HStack{
                        Text("7")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(Color(UIColor.label))
                        + Text("hr")
                            .font(.body)
                            .fontWeight(.medium)
                            .foregroundColor(Color(UIColor.secondaryLabel))
                        
                        Text("52")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(Color(UIColor.label))
                        + Text("min")
                            .font(.body)
                            .fontWeight(.medium)
                            .foregroundColor(Color(UIColor.secondaryLabel))
                                   
                    }
                    Text("On Average")
                        .foregroundColor(Color(UIColor.secondaryLabel))
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    
                    
                }
                .padding(.horizontal, 15)
                .padding(.top, 1)
                
                Divider()
                
                VStack(alignment: .leading){
                    HStack{
                        Text("8")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(Color(UIColor.label))
                        + Text("hr")
                            .font(.body)
                            .fontWeight(.medium)
                            .foregroundColor(Color(UIColor.secondaryLabel))
                        
                        Text("0")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(Color(UIColor.label))
                        + Text("min")
                            .font(.body)
                            .fontWeight(.medium)
                            .foregroundColor(Color(UIColor.secondaryLabel))
                        
                    }
                    Text("Sleep Goal")
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

private struct SleepGraph: View{
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Label("Sleep Graph", systemImage: "bed.double.fill")
                    .font(.headline)
                    .foregroundColor(Color(UIColor.systemGreen))
                    .padding([.horizontal], 15)
                    .padding(.top, 10)
            }
            HStack{
                Text("Grapgh goes here")
                    .font(.body)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(UIColor.label))
                
               
            }
            .frame(
              minWidth: 0,
              maxWidth: .infinity,
              alignment: .leading
              )
            .padding(.horizontal, 15)
            .padding(.top, 1)
            
            Spacer()
        }
        .background(Color(UIColor.systemBackground), ignoresSafeAreaEdges: [])
        .cornerRadius(10)
        .padding(.top, 15)
        
    }
    
}

struct SleepContentView_Previews: PreviewProvider {
    static var previews: some View {
        SleepContentView()
    }
}
