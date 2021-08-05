//
//  MessageRowView.swift
//  AqarZellos
//
//  Created by hosam on 03/08/2021.
//

import SwiftUI

struct MessageRowView: View {
    var x =                 MessageModel(name: "Marie Winter", pic: "sss", desc: "Happiness is not something readymade. \nIt comes from your own actions.")
    
    var body: some View {
        VStack {
            HStack(spacing:24) {
                
                Image(x.pic)
                    .resizable()
                    .frame(width: 62, height: 62)
                    
                    .cornerRadius(10)
                
                VStack(alignment: .leading, spacing: 4, content: {
                    HStack {
                        Text(x.name)
                            .font(.system(size: 16))
                            .fontWeight(.bold)
                            .foregroundColor(Color.black)
                        
                        Spacer()
                        
                        if x.isShow {
                            
                            Circle()
                                .fill(Color.orange)
                                .frame(width:8)
                                
                        }
                    }
                    
                    Text(x.desc)
                        .font(.system(size: 12))
                        .fontWeight(.regular)
                        .foregroundColor(Color.black.opacity(0.6))
                        .lineLimit(3)
                        .padding(.bottom)
                    
                        
                })
            }
            
            Divider()
                .frame(height:4)
        }
//        .background(Color.white)
    }
}

struct MessageRowView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//        MessageRowView()
    }
}
