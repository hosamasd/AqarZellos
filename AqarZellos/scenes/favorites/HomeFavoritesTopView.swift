//
//  HomeFavoritesTopView.swift
//  AqarZellos
//
//  Created by hosam on 02/08/2021.
//

import SwiftUI

struct HomeFavoritesTopView: View {
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
            
            Text("Favorites")
                .foregroundColor(.white)
                .font(.system(size: 18))
                .fontWeight(.bold)
            
            Spacer()
        }
        
        
    }
}

struct HomeFavoritesTopView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//        HomeFavoritesTopView()
    }
}
