//
//  HomePostsViewRowView.swift
//  AqarZellos
//
//  Created by hosam on 04/08/2021.
//

import SwiftUI

struct HomePostsViewRowView: View {
    var x =         PostModel(name: "Home", pic: "images1", desc: "10.000 EGY , 150 M")
    
    var body: some View {
        VStack {
            
            Image(x.pic)
                .resizable()
                .frame(width:getFrameSize().width/2 - 48,height:170)
                .aspectRatio(contentMode: .fill)
            
            HStack {
                
                VStack(alignment:.leading) {
                    Text(x.name)
                        .font(.system(size: 14))
                        .foregroundColor(.white)
                    
                    Text(x.desc)
                        .font(.system(size: 10))
                        .foregroundColor(Color.white.opacity(0.6))
                    
                }
                Spacer()
                
                
            }
            .padding(.horizontal)
            .padding(.vertical,6)
            .padding(.bottom,4)
            
        }
        .background(Color("mains"))
        .cornerRadius(10)
    }
}

struct HomePostsViewRowView_Previews: PreviewProvider {
    static var previews: some View {
        MainHome()
    }
}
