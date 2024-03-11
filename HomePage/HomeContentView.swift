//
//  HomeContentView.swift
//  MatterEducationZim
//
//  Created by admin on 11/3/2024.
//

import SwiftUI

struct HomeContentView: View {
    
    
    
    var body: some View {
        VStack{
            
            VStack{
                
                HStack{
                   
                    Spacer(minLength: 0.2)
                    Image(systemName: "sidebar.right")
                   .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                   
                }
            }
        
            TabView {
                VStack{
                    HStack{
                    Text("Home Dashboard")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    Spacer()
                }
                    Spacer()
                }
                            .tabItem {
                                
                                Image(systemName: "house")
                                Text("Home")
                            }
                       
                       Text("Tab2")
                            .tabItem {
                                Image(systemName: "graduationcap.fill")
                                Text("Student Progress")
                               ContentView()
                            }
                
                        
                ContentView()
                            .tabItem {
                                Image(systemName: "laptopcomputer.and.ipad")
                                Text("Devices")
                            }
                        
                        Text("Tab 4")
                            .tabItem {
                                Image(systemName: "folder.badge.plus")
                                Text("Report")
                            }
                        
                        Text("Tab 5")
                            .tabItem {
                                Image(systemName: "message.fill")
                             
                                Text("Chat")
                            }
                    }
                    .edgesIgnoringSafeArea(.top)
                
            }
        }
        
    }


#Preview {
    HomeContentView()
}
