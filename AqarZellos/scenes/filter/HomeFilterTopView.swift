//
//  HomeFilterTopView.swift
//  AqarZellos
//
//  Created by hosam on 04/08/2021.
//

import SwiftUI

struct HomeFilterTopView: View {
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
            
            Text("Filter")
                .font(.system(size: 18))
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
            Spacer()
        }
        
        
    }
}

struct HomeFilterTopView_Previews: PreviewProvider {
    static var previews: some View {
        HomeFilterTopView()
    }
}
