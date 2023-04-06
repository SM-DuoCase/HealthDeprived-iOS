//
//  HydrationView.swift
//  HealthDeprived
//
//  Created by Niels Feijen on 03/04/2023.
//

import SwiftUI

struct HydrationView: View {
    var body: some View {
        NavigationStack {
            ScrollView(.vertical) {
                VStack(alignment: .leading){
                    HydrationCard()
                    HydrationGraph()
                }
                .frame(minWidth: 0, maxWidth: .infinity)
                .navigationTitle("Hydration")
                .padding(.horizontal, 20)
                .padding(.top, 20.0)
            }
            .background(Color(UIColor.secondarySystemBackground))
        }
    }
}



private struct HydrationCard: View{
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack {
                Label("Hydration Summary", systemImage: "drop.fill")
                    .font(.headline)
                    .foregroundColor(Color(UIColor.systemGreen))
                .padding([.horizontal], 15)
                .padding(.top, 10)
               
            }
            
            HStack {
                VStack(alignment: .leading) {
                    HStack {
                        Text("Normal hydration Graph")
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
                        Text("250")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(Color(UIColor.label))
                        + Text("ML")
                            .font(.body)
                            .fontWeight(.medium)
                            .foregroundColor(Color(UIColor.secondaryLabel))
                                   
                    }
                    Text("Today")
                        .foregroundColor(Color(UIColor.secondaryLabel))
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    
                }
                .padding(.horizontal, 15)
                .padding(.top, 1)
                
                Divider()
                
                VStack(alignment: .leading){
                    HStack{
                        Text("1200")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(Color(UIColor.label))
                        + Text("ML")
                            .font(.body)
                            .fontWeight(.medium)
                            .foregroundColor(Color(UIColor.secondaryLabel))
                        
                    }
                    Text("Daily Hydration Goal")
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

private struct HydrationGraph: View{
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Label("Hydration Graph", systemImage: "drop.fill")
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

struct HydrationView_Previews: PreviewProvider {
    static var previews: some View {
        HydrationView()
    }
}
