//
//  MyTab.swift
//  AqarZellos
//
//  Created by hosam on 04/08/2021.
//

import SwiftUI

struct MyTab: View {
    @Binding var index:Int
    var body: some View {
        HStack{
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color("t"))
                
                //                .fill(                                        Color.black.opacity(0.2))
                .overlay(
                    
                    HStack {
                        
                        Button(action: {withAnimation{
                            index = 0
                        }}, label: {
                            
                            Image(  index == 0  ? "placeholderFilledPoint1" : "placeholderFilledPoint" )
                                .resizable()
                                .frame(width: 26, height: 26)
                            
                            
                            
                        })
                        
                        Spacer()
                        
                        Button(action: {                            withAnimation{index=1}}, label: {
                            
                            
                            Image(  index == 1  ? "plus2" : "plus" )
                                .resizable()
                                .frame(width: 26, height: 26)
                            
                        })
                        
                        Spacer()
                        
                        Button(action: {                            withAnimation{index=2}
                        }, label: {
                            
                            Image(  index == 2  ? "favorite-heart-button (2)" : "favoriteHeartButton1" )
                                .resizable()
                                .frame(width: 26, height: 26)
                            
                        })
                        
                        Spacer()
                        
                        Button(action: {                            withAnimation{index=3}}, label: {
                            
                            
                            Image(  index == 3  ? "notification" : "notification1" )
                                .resizable()
                                .frame(width: 26, height: 26)
                            
                        })
                    }
                    .padding()
                    .padding(.horizontal,24)
                )
                
                .frame(width: getFrameSize().width-24, height: 50)
            //                .padding(.top,40)
            //                .frame(height:70)
            
        }
        
        .padding(.horizontal, UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 25 : 35)
        .padding(.bottom, UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 20 : UIApplication.shared.windows.first!.safeAreaInsets.bottom - 10)//8 16
        .padding(.top,10)
        .frame(width: getFrameSize().width)//, height: 70)
        .background(Color.white)
        .clipShape(CustomCorners(corners: [.topLeft,.topRight], width: 24))
    }
}

struct MyTab_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
