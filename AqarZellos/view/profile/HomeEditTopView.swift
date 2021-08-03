//
//  HomeEditTopView.swift
//  AqarZellos
//
//  Created by hosam on 03/08/2021.
//

import SwiftUI

struct HomeEditTopView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        HStack {
            
            Button(action: {withAnimation{
                
                presentationMode.wrappedValue.dismiss()
            }}, label: {
                Image(systemName: "chevron.backward")
                    .foregroundColor(.white)
                
            })
            
            
            Spacer()
        }
        
        
    }
}

struct HomeEditTopView_Previews: PreviewProvider {
    static var previews: some View {
        HomeEditTopView()
    }
}
