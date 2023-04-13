//
//  DietView.swift
//  HealthDeprived
//
//  Created by Niels Feijen on 05/04/2023.
//

import SwiftUI

struct DietView: View {
    var body: some View {
        NavigationStack {
            ScrollView(.vertical) {
                Button {
                    
                } label: {
                    Text("Add Consumed Products")
                        .frame(maxWidth: .infinity)
                }
                .buttonStyle(.borderedProminent)
                .padding(.horizontal, 20)

                VStack(alignment: .leading){
                    CarbsCard()
                    ProteinCard()
                }
                .frame(minWidth: 0, maxWidth: .infinity)
                .navigationTitle("Diet")
                .padding(.horizontal, 20)
                .padding(.top, 10.0)
            }
            .background(Color(UIColor.secondarySystemBackground))
        }
    }
}

private struct CarbsCard: View{
    var body: some View {

        
        VStack(alignment: .leading) {

            HStack {
                Label("Carbs", systemImage: "carrot.fill")
                    .font(.headline)
                    .foregroundColor(Color(UIColor.systemGreen))
                .padding([.horizontal], 15)
                .padding(.top, 10)
               
            }
            
            HStack {
                VStack(alignment: .leading) {
                    HStack {
                        Text("Your average carb amount is set to 420 grams. If you would like to change this go to settings.")
                            .font(.caption)
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
                        Text("309")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(Color(UIColor.label))
                        + Text("g")
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
                        Text("209")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(Color(UIColor.label))
                        + Text("g")
                            .font(.body)
                            .fontWeight(.medium)
                            .foregroundColor(Color(UIColor.secondaryLabel))
                        
                    }
                    Text("Average This Week")
                        .foregroundColor(Color(UIColor.secondaryLabel))
                        .font(.subheadline)
                        .fontWeight(.semibold)
                }
                .padding(.horizontal, 15)
                .padding(.top, 1)
                
            }
            
            Spacer()
            
            Divider().padding(.horizontal, 15)
            
            HStack {
                Text("Graph")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(UIColor.label))
            }
            .padding(.horizontal, 15)
            .padding(.top, 1)
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

private struct ProteinCard: View{
    var body: some View {
        Spacer()
        
        VStack(alignment: .leading) {

            HStack {
                Label("Protein", systemImage: "carrot.fill")
                    .font(.headline)
                    .foregroundColor(Color(UIColor.systemGreen))
                .padding([.horizontal], 15)
                .padding(.top, 10)
               
            }
            
            HStack {
                VStack(alignment: .leading) {
                    HStack {
                        Text("Your average protein amount is set to 60 g/l. If you would like to change this go to settings.")
                            .font(.caption)
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
                        Text("56")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(Color(UIColor.label))
                        + Text("g/l")
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
                        Text("53")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(Color(UIColor.label))
                        + Text("g/l")
                            .font(.body)
                            .fontWeight(.medium)
                            .foregroundColor(Color(UIColor.secondaryLabel))
                    }
                    Text("Average This Week")
                        .foregroundColor(Color(UIColor.secondaryLabel))
                        .font(.subheadline)
                        .fontWeight(.semibold)
                }
                .padding(.horizontal, 15)
                .padding(.top, 1)
            }
            
            Spacer()
            
            Divider().padding(.horizontal, 15)
            
            HStack {
                Text("Graph")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(UIColor.label))
            }
            .padding(.horizontal, 15)
            .padding(.top, 1)
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

struct DietView_Previews: PreviewProvider {
    static var previews: some View {
        DietView()
    }
}
