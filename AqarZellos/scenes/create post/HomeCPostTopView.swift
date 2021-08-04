//
//  HomeCPostTopView.swift
//  AqarZellos
//
//  Created by hosam on 04/08/2021.
//

import SwiftUI

struct HomeCPostTopView: View {
    @Binding var show:Bool

    var body: some View {
        HStack {
            
            Button(action: {withAnimation{
                show.toggle()
//                    presentationMode.wrappedValue.dismiss()
            }}, label: {
                Image(systemName: "chevron.backward")
                    .foregroundColor(.white)
//                    .frame(maxWidth:.infinity,alignment: .leading)
                
        })
            
            Spacer()
            
            Text("Creat post")
                .foregroundColor(.white)
                .font(.system(size: 18))
                .fontWeight(.bold)
            
            Spacer()
        }
    }
}

struct HomeCPostTopView_Previews: PreviewProvider {
    static var previews: some View {
        HomeCPostTopView(show: .constant(false))
    }
}
