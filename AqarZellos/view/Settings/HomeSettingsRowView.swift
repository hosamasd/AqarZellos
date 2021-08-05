//
//  HomeSettingsRowView.swift
//  AqarZellos
//
//  Created by hosam on 02/08/2021.
//

import SwiftUI

struct HomeSettingsRowView: View {
    var title = "HI, Hosam"
    var img = "jackFinniganRriAi0NhcbcUnsplash"
    var color = "logs"
    var isFirst = false
    var isNotify = false
    @State var showGreeting=true
    var body: some View {
        HStack(spacing:0) {
            
            ZStack {
                Circle()
                    .fill(Color(color))
                   
                    .frame(width: 32, height: 32)
                    .overlay(
                        Image(img)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 14, height: 14)
                        
                    )
                
                if isFirst {
                    
                    Image(img)
                        .resizable()
                        .frame(width: 54, height: 54)
                    
                }
            }
            
            Text(title)
                .font(.system(size: 18))
                .fontWeight(.semibold)
                .padding(.leading)
                .foregroundColor(Color.black.opacity(0.6))
            
            Spacer()
            
            if !isNotify {
                Button(action: {}, label: {
                    Image(systemName: "chevron.right")
                        .foregroundColor(.black)
                })
                .opacity(isFirst ? 0 : 1)
            }else {
                Toggle("", isOn: $showGreeting)
                    .toggleStyle(SwitchToggleStyle(tint: .green))
                
            }
        }
        .padding()
    }
}

struct HomeSettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        //        HomeSettingsRowView(isNotify:true)
        
    }
}
