//
//  NotfyRowView.swift
//  AqarZellos
//
//  Created by hosam on 03/08/2021.
//

import SwiftUI

struct NotfyRowView: View {
    var x =             NotifyModek(name: "Home", time: "1:48 Hour ago ", pic: "images1",desc: "On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment")

    var body: some View {
        HStack(spacing:12) {
            
            Image(x.pic)
            
            
            VStack(alignment: .leading, spacing: 0, content: {
                Text(x.time)
                    .foregroundColor(Color.gray.opacity(0.6))
                    .font(.system(size: 12))
                
                Text(x.name)
                    .foregroundColor(Color.black)
                    .font(.system(size: 14))
                
                Text(x.desc)
                    .foregroundColor(Color.gray.opacity(0.6))
                    .font(.system(size: 8))
            })
            
        }
        .background(Color.white)
        .frame(height:90)
        .cornerRadius(10)
    }
}

struct NotfyRowView_Previews: PreviewProvider {
    static var previews: some View {
        Homenotifications()
    }
}
