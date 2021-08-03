//
//  ProfileMainRowView.swift
//  AqarZellos
//
//  Created by hosam on 03/08/2021.
//

import SwiftUI

struct ProfileMainRowView: View {
    var text = "Email address"
    @Binding var x:String
    @Binding var isOpen:Bool
    
//    @ObservedObject var vm:HomeEditViewModel
    
    var body: some View {
        VStack {
            
            HStack {
                Text(text)
                    .font(.system(size: 18))
                    .fontWeight(.bold)
                    .foregroundColor(Color.black.opacity(0.4))

                
                Spacer()
                
                Button(action: {
                    withAnimation{
                        isOpen.toggle()
                    }
                }, label: {
                    Text("Edit")
                        .foregroundColor(.green)
                        .font(.system(size: 18))
                        .fontWeight(.bold)
                })
                
            }
            
            Rectangle()
                
                .stroke(Color.black.opacity(0.6), lineWidth: 1)
                //                .fill(Color.white)
                .overlay(
                    
                    TextField(x, text: $x)
                        .padding(.leading)
                        .padding()
                        .disabled(!isOpen)
                )
                .background(Color.white)
                .frame(height:50)
            
        }
        
    }
}

struct ProfileMainRowView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileMainRowView(x:.constant("melzohiry96@gmail.com"),isOpen:.constant(false))//,vm: HomeEditViewModel())
    }
}
