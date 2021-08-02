//
//  HomeContactUsTopView.swift
//  AqarZellos
//
//  Created by hosam on 02/08/2021.
//

import SwiftUI

struct HomeContactUsTopView: View {
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
            
            Text("Contact us")
                .foregroundColor(.white)
                .font(.system(size: 18))
                .fontWeight(.bold)
            
            Spacer()
        }
    }
}

struct HomeContactUsTopView_Previews: PreviewProvider {
    static var previews: some View {
        HomeContactUsTopView()
    }
}
