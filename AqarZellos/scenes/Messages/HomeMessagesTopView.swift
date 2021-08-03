//
//  HomeMessagesTopView.swift
//  AqarZellos
//
//  Created by hosam on 03/08/2021.
//

import SwiftUI

struct HomeMessagesTopView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        HStack {
            
            Button(action: {withAnimation{
                
                presentationMode.wrappedValue.dismiss()
            }}, label: {
                Image(systemName: "chevron.backward")
                    .foregroundColor(.white)
                //                    .frame(maxWidth:.infinity,alignment: .leading)
                
            })
            
            Spacer()
            
            
            
            Image(systemName: "magnifyingglass")
                .foregroundColor(.white)

        }
        
        
    }
}

struct HomeMessagesTopView_Previews: PreviewProvider {
    static var previews: some View {
        HomeMessagesTopView()
    }
}
