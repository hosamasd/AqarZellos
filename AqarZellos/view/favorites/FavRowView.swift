//
//  FavRowView.swift
//  AqarZellos
//
//  Created by hosam on 02/08/2021.
//

import SwiftUI

struct FavRowView: View {
    var x =                 FavoriteModel(name: "Home", time: "1:48 Hour ago ", pic: "images1")
    
    
    var body: some View {
        VStack {
            
            Image(x.pic)
                .resizable()
                .frame(height:185)
                .cornerRadius(10)
            
            VStack (alignment:.leading){
                Text(x.name)
                    .font(.system(size: 14))
                    .fontWeight(.semibold)
                
                
                Text(x.time)
                    .foregroundColor(Color.gray.opacity(0.6))
                    .font(.system(size: 12))
                    .fontWeight(.semibold)
                
            }
            .padding(.bottom)
            .padding(.leading,-32)
        }
        .background(Color.white)
        .frame(height:230)
        .cornerRadius(10)
    }
}

struct FavRowView_Previews: PreviewProvider {
    static var previews: some View {
        HomeFavorites()
        //        FavRowView()
    }
}
