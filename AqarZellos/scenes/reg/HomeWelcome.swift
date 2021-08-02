//
//  HomeWelcome.swift
//  AqarZellos
//
//  Created by hosam on 02/08/2021.
//

import SwiftUI

struct HomeWelcome: View {
    
    @State var isShow = false
    
    var body: some View {
        ZStack {
            
            Image("1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth:getFrameSize().width,maxHeight: getFrameSize().height+20)
                .edgesIgnoringSafeArea(.top)
            
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
                        
                        Button(action: {
                            
                        }, label: {
                            
                            ZStack {
                                
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color("bord"))
                                
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color("mains"))
                                    .overlay(
                                        
                                        Text("Current location")
                                            .foregroundColor(.white)
                                            .font(.system(size: 22))
                                            .fontWeight(.bold)
                                    )
                                    
                                    .padding(.horizontal,4)
                                    
                                    .padding(.vertical,4)
                                
                                
                                
                            }
                            
                            
                        })
                        .frame(height:50)
                        .padding(.horizontal,24)
                        
                        Button(action: {
                            withAnimation{isShow.toggle()}
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
            }
        }
        .onAppear(perform: {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+1) {
                withAnimation{isShow.toggle()}
                
            }
            
        })
    }
}

struct HomeWelcome_Previews: PreviewProvider {
    static var previews: some View {
        HomeWelcome()
    }
}
