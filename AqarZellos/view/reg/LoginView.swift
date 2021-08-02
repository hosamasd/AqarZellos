//
//  LoginView.swift
//  AqarZellos
//
//  Created by hosam on 02/08/2021.
//

import SwiftUI

struct LoginView: View {
    @ObservedObject var vm:HomeLogSignViewModel
    
    var body: some View {
        VStack {
            
            TFWithBorder(txt: $vm.emailLogin, isPass: .constant(false))
                .padding(.bottom,30)
            
            
            TFWithBorder(txt: $vm.passLogin,hint: "Password", isPass: .constant(false))
            
            Button(action: {}, label: {
                
                Text("Forget Password ?")
                    .foregroundColor(.white)
                    .fontWeight(.regular)
                    .frame(maxWidth:.infinity,alignment: .trailing)
                
            })
            .padding(.top)
            .padding(.bottom,30)
            
            Button(action: {
                
            }, label: {
                
                ZStack {
                    
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color("bord"))
                    
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color("mains"))
                        .overlay(
                            
                            Text("LOGIN")
                                .foregroundColor(.white)
                                .font(.system(size: 22))
                                .fontWeight(.bold)
                        )
                        
                        .padding(.horizontal,4)
                        
                        .padding(.vertical,4)
                    
                    
                    
                }
                //                                .shadow(color: Color.black.opacity(0.6), radius: 0.5, x: 0.5, y: 0.5)
                
                
            })
            .frame(height:50)
            
            Text("OR LOGIN WITH")
                .foregroundColor(.white)
                .padding()
            
            HStack {
                
                Image("facebook2")
                    .padding(.trailing)
                
                Image("googlePlus")
                
                
            }
            
            Spacer()
            
            Button(action: {withAnimation{vm.isLogin.toggle()}}, label: {
                HStack {
                    Text("Don't have an account ? ")
                        .foregroundColor(.white)
                        
                        +
                        Text("Sign Up")
                        .foregroundColor(.red)
                    
                }
            })
        }
        .padding(.horizontal,32)
        .padding(.bottom,getSafeArea()?.bottom == 0 ? 45 : 30)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(vm:HomeLogSignViewModel())
    }
}
