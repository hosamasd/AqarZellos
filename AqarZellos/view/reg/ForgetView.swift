//
//  ForgetView.swift
//  AqarZellos
//
//  Created by hosam on 02/08/2021.
//

import SwiftUI

struct ForgetView: View {
    @ObservedObject var vm:HomeLogSignViewModel
    
    var body: some View {
        VStack {
            
            TFWithBorder(txt: $vm.emailForget, isPass: .constant(false))
                .padding(.bottom,30)
            
            
            
            Button(action: {
                withAnimation{vm.forgetPasswords()}
                
            }, label: {
                
                
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color("mains"))
                    .overlay(
                        
                        Text("Forget")
                            .foregroundColor(.white)
                            .font(.system(size: 22))
                            .fontWeight(.bold)
                    )
                
                
                
                
            })
            .frame(height:50)
            .shadow(color: Color("bord"), radius: 5, x: 5, y: -2.5)
            
            
            Spacer()
            
        }
        .padding(.horizontal,32)
        .padding(.bottom,getSafeArea()?.bottom == 0 ? 45 : 30)
    }
}

struct ForgetView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
