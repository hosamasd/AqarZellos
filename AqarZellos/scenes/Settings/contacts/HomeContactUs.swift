//
//  HomeContactUs.swift
//  AqarZellos
//
//  Created by hosam on 02/08/2021.
//

import SwiftUI

struct HomeContactUs: View {
    var body: some View {
        ZStack {
            
            Image("1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth:getFrameSize().width,maxHeight: getFrameSize().height+20)
                .edgesIgnoringSafeArea(.top)
            
            VStack {
                
                HomeContactUsTopView()
                    .padding(.horizontal,24)
                
                VStack {
                
//                    Spacer()
                    
                    Image("2427280")
                        .padding(.top,40)
                    
                    Text("Follow us")
                        .foregroundColor(Color.black.opacity(0.6))
                        .padding()
                    
                    HStack(spacing:12){
                        
                        ForEach(0...6,id:\.self) { _ in
                            Image("twitter3")
                        }
                        
                    }
                    
                    Divider()
                        .background(Color.black.opacity(0.8))
                        .padding(.vertical)
                        .padding(.horizontal)
                    
                    Text("Contact  us")
                        .foregroundColor(Color.black.opacity(0.6))
                        .padding()
                    
                    VStack(alignment:.leading, spacing:16) {
                        HStack(spacing:8) {
                            
                            Circle()
                                .fill(Color("mains"))
                                .frame(width: 24, height: 24)
                                .overlay(
                                    Image("gmail4")

                                )
                            
                            Text("hosamelmalt@gamil.com")
                            
                        }
                        HStack(spacing:8) {
                            
                            Circle()
                                .fill(Color("mains"))
                                .frame(width: 24, height: 24)
                                .overlay(
                                    Image("gmail4")

                                )
                            
                            Text("01001384592")
                            
                        }

                    }
                    
                    
                Spacer()
            }
            .frame(maxWidth:.infinity)
            .background(Color.white)
            //                .padding(.top)
            .clipShape(CustomCorners(corners: [.topRight,.topLeft], width: 30))
            
            .padding(.top)
            
            Spacer()
            
        }
        .padding(.top,40)
        
    }
    .navigationBarTitle("")
    .navigationBarHidden(true)
    .navigationBarBackButtonHidden(true)
    }
}

struct HomeContactUs_Previews: PreviewProvider {
    static var previews: some View {
        HomeContactUs()
    }
}
