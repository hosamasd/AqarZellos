//
//  HomeSettings.swift
//  AqarZellos
//
//  Created by hosam on 02/08/2021.
//

import SwiftUI

struct HomeSettings: View {
    @Binding var show:Bool
    @StateObject var vm = HomeSettingsViewModel()
    
    var body: some View {
        ZStack {
            
            Image("1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth:getFrameSize().width,maxHeight: getFrameSize().height+20)
                .edgesIgnoringSafeArea(.top)
            
            VStack {
                
                HomeSettingsTopView(show: $show)
                    .padding(.horizontal,24)
                
                ScrollView(isSmallDevice() ? .vertical : .init()) {
                    
                    VStack {
                        HomeSettingsRowView(isFirst:true)
                            .padding(.top,0)
                        
                        Divider()
                            .background(Color.black)
                        NavigationLink(destination:
                                        HomeMessages()
                        )  {
                        HomeSettingsRowView(title: "Chat", img: "chat1", color: "cha", isFirst: false)
                        }
                        
                        Text("Profile")
                            .frame(maxWidth:.infinity,alignment: .leading)
                        
                        VStack(spacing:-16) {
                            NavigationLink(destination:
                                            HomeShowProfile()
                            )  {
                            HomeSettingsRowView(title: "Edit Profile", img: "manUser", color: "prof", isFirst: false)
                            
                            }
                            HomeSettingsRowView(title: "Change Password", img: "key", color: "pass", isFirst: false)
                            
                        }
                        
                        Text("Notifications")
                            .frame(maxWidth:.infinity,alignment: .leading)
                        
                        VStack(spacing:-16) {
                            
                            
                            HomeSettingsRowView(title: "Notifications", img: "notificationsButton", color: "notif", isFirst: false,isNotify: true)
                            
                            
                        }
                        
                        Text("General")
                            .frame(maxWidth:.infinity,alignment: .leading)
                        
                        VStack(spacing:-16) {
                            HomeSettingsRowView(title: "Language", img: "translate", color: "lang", isFirst: false)
                            
                            NavigationLink(destination:
                                            HomeHelp()
                            )  {
                                HomeSettingsRowView(title: "Help", img: "info", color: "help", isFirst: false)
                                    .foregroundColor(.black)
                                
                            }
                            
                            NavigationLink(destination:
                                            HomeContactUs()
                            )  {
                                
                                HomeSettingsRowView(title: "Contact us", img: "contactUs1", color: "contac", isFirst: false)
                                    .foregroundColor(.black)
                                
                                
                            }
                            
                            HomeSettingsRowView(title: "Log Out", img: "logout", color: "logout", isFirst: false)
                                .onTapGesture(perform: {
                                    vm.logOut()
                                })
                            
                        }
                        
                        
                        
                        
                    }
                    .padding()
                    .padding(.horizontal)
                }
                .background(Color.white)
                //                .padding(.top)
                .clipShape(CustomCorners(corners: [.topRight,.topLeft], width: 30))
                
                .padding(.top)
                
                Spacer()
            }
            
            .padding(.top,40)
            
                        if vm.isLoading {
                            LoadingCapsuleSpacing()
                        }
            
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct HomeSettings_Previews: PreviewProvider {
    static var previews: some View {
        HomeSettings(show: .constant(false))
    }
}
