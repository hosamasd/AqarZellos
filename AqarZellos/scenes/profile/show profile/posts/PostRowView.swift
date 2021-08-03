//
//  PostRowView.swift
//  AqarZellos
//
//  Created by hosam on 03/08/2021.
//

import SwiftUI

struct PostRowView: View {
    var x =         PostModel(name: "Home", pic: "images1", desc: "10.000 EGY , 150 M")

    
    var body: some View {
        VStack {
            
            Image(x.pic)
                .resizable()
                .frame(height:160)
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
                
                Image( "xx")
                
            }
            .padding(.horizontal)
            .padding(.vertical,6)
            .padding(.bottom,4)
            
        }
        .background(Color("mains"))
        .cornerRadius(10)
    }
}

struct PostRowView_Previews: PreviewProvider {
    static var previews: some View {
        HomeShowProfile()
//        PostRowView()
    }
}
