//
//  HomeHelp.swift
//  AqarZellos
//
//  Created by hosam on 02/08/2021.
//

import SwiftUI

struct HomeHelp: View {
    var body: some View {
        ZStack {
            
            Image("1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth:getFrameSize().width,maxHeight: getFrameSize().height+20)
                .edgesIgnoringSafeArea(.top)
            
            VStack {
                
                HomeHelpTopView()
                    .padding(.horizontal,24)
                
                
                
                VStack {
                    
                    Spacer()
                    
                    Image("2663530")
                    
                    Text("On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment")
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.black.opacity(0.6))
                        .padding(.horizontal,32)
                        .padding(.top,20)
                    
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

struct HomeHelp_Previews: PreviewProvider {
    static var previews: some View {
        HomeHelp()
    }
}
