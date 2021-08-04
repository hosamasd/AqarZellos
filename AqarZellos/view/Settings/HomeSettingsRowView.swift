//
//  HomeSettingsRowView.swift
//  AqarZellos
//
//  Created by hosam on 02/08/2021.
//

import SwiftUI

struct HomeSettingsRowView: View {
    var title = "Log in"
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
                    .overlay(
                        Image(img)
                            .resizable()
                            .frame(width: 28, height: 28)

                    )
                    .frame(width: 32, height: 32)
                
                if isFirst {
                    Circle()
                        .fill(Color(color))
                        .overlay(
                            Image(img)
                            
                        )
                        .frame(width: 40, height: 40)
                    
                }
            }
            
            Text(title)
                .font(.system(size: 18))
                .fontWeight(.semibold)
                .padding(.leading)
            
            Spacer()
            
            if !isNotify {
                Button(action: {}, label: {
                    Image(systemName: "chevron.right")
                        .foregroundColor(.black)
                })
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
        HomeSettingsRowView(isNotify:true)
        
    }
}
