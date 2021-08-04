//
//  AddMinusView.swift
//  AqarZellos
//
//  Created by hosam on 04/08/2021.
//

import SwiftUI

struct AddMinusView: View {
    @Binding var number:Int
    var body: some View {
        HStack(spacing:16) {
            
            Button(action: {
                withAnimation{
                    if number == 0 {return}
                    number -= 1
                }
                
            }, label: {
                Image(systemName: "minus")
                    .foregroundColor(.gray)
            })
            
            Circle()
                .fill(Color.white)
                .overlay(
                
                    Text("\(number)")
                        .font(.system(size: 29))
                        .fontWeight(.bold)
                        .foregroundColor(Color.black.opacity(0.4))
                )
                .frame(width: 52,height:52)
            
            Button(action: {
                withAnimation{
                    number += 1
                }
            }, label: {
                Image(systemName: "plus")
                    .foregroundColor(.gray)
            })
            
        }
        .padding(.horizontal,24)

        .background(Color("ssss").opacity(0.2))
        .clipShape(Capsule())
    }
}

struct AddMinusView_Previews: PreviewProvider {
    static var previews: some View {
        HomeFilter()
    }
}
