//
//  HomeCPost.swift
//  AqarZellos
//
//  Created by hosam on 04/08/2021.
//

import SwiftUI

struct HomeCPost: View {
    @Binding var show:Bool
@StateObject var vm = HomeCPostViewModel()
    var body: some View {
        ZStack {
            
            Image("1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth:getFrameSize().width,maxHeight: getFrameSize().height+20)
                .edgesIgnoringSafeArea(.top)
            
            VStack {
                
                HomeCPostTopView(show: $show)
                    .padding(.horizontal,24)
                VStack {
                    
                ScrollView(isSmallDevice() ? .vertical : .vertical,showsIndicators:false) {
                    
                   
                        
                        Spacer()
                        
                    }
                    
                }
                .background(Color.white)
                //                .padding(.top)
                .clipShape(CustomCorners(corners: [.topRight,.topLeft], width: 30))
                
                .padding(.top)
                
                Spacer()

            }
            .padding(.top,40)

            
        }
    }
}

struct HomeCPost_Previews: PreviewProvider {
    static var previews: some View {
        HomeCPost(show: .constant(false))
    }
}
