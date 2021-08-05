//
//  HomeWelcome.swift
//  AqarZellos
//
//  Created by hosam on 02/08/2021.
//

import SwiftUI

struct HomeWelcome: View {
    
    @State var isShow = false
    @State var showLocation = false
    @State var locationText = ""
    @StateObject var vm = HomeWelcomeViewModel()
    
    var body: some View {
        ZStack {
            
            Image("1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth:getFrameSize().width,maxHeight: getFrameSize().height+20)
                .edgesIgnoringSafeArea(.top)
            
            if vm.isGet {
                
                NavigationLink(
                    destination: HomeLogSign(),
                    isActive: .constant(self.vm.isGet )   // << activate conditionally
                ) {
                    EmptyView()
                }
                //                    vm.isGet.toggle()
            }
            
            VStack {
                
                //                Spacer()
                
                VStack {
                    
                    Spacer()
                    
                    Image("invalidName")
                    
                    Text("AQAR ZELO")
                        .foregroundColor(.white)
                        .font(.system(size: 44))
                        .fontWeight(.bold)
                        .padding(.leading,30)
                    
                    //                    Spacer()
                    
                }
                .offset(y:isShow ? -40 :  0)
                
                VStack {
                    
                    VStack(spacing:20) {
                        
                        Spacer()
                        
                        Text("What do you want the application /n to open on the map ?")
                            .foregroundColor(.white)
                            .font(.system(size: 12))
                            .lineLimit(2)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal,100)
                        
                        Button(action: {}, label: {
                            
                            NavigationLink(destination:
                                            HomeLogSign()
                            ) {
                                
                                
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color("mains"))
                                    .overlay(
                                        
                                        Text("Current location")
                                            .foregroundColor(.white)
                                            .font(.system(size: 22))
                                            .fontWeight(.bold)
                                    )
                                
                                
                            }
                        })
                        .frame(height:50)
                        .shadow(color: Color("bord"), radius: 5, x: 5, y: -2.5)
                        
                        .padding(.horizontal,24)
                        
                        Button(action: {
                            withAnimation{showLocation.toggle()}
                        }, label: {
                            
                            
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(Color("bord"),lineWidth: 4)
                                .overlay(
                                    
                                    Text("Go location")
                                        .foregroundColor(.white)
                                        .font(.system(size: 22))
                                        .fontWeight(.bold)
                                )
                            
                            
                            
                        })
                        .frame(height:50)
                        .padding(.horizontal,24)
                        
                        
                        Spacer()
                        
                    }
                    Spacer()
                    
                }
                .opacity(isShow ? 1 : 0)
                
                
                
                Spacer()
                
                //                if vm.isGet {
                //
                //                    NavigationLink(destination:
                //                    HomeLogSign()
                //                    ) {
                //                    Text("")
                //                    }
                //                    vm.isGet.toggle()
                //                }
            }
            
            
            
            
        }
        
        .onAppear(perform: {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+1) {
                withAnimation{isShow=true}
                
            }
            
        })
        
        .fullScreenCover(isPresented: $showLocation, content: {
            LocationView(dismiss: $showLocation, locationText: $locationText )//enteredLocation: $enteredLocation)
                .environmentObject(vm)
        })
        
        
        
    }
}

struct HomeWelcome_Previews: PreviewProvider {
    static var previews: some View {
        HomeWelcome()
    }
}
