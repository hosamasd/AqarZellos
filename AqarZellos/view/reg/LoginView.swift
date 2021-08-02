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
            
            
            TFWithBorder(txt: $vm.passLogin,hint: "Password",isHide: true,isSecure: vm.isShowPass,isPass: $vm.isLoginShowPass)
            
            Button(action: {withAnimation{vm.isForget.toggle()}}, label: {
                
                Text("Forget Password ?")
                    .foregroundColor(.white)
                    .fontWeight(.regular)
                    .frame(maxWidth:.infinity,alignment: .trailing)
                
            })
            .padding(.top)
            .padding(.bottom,30)
            
            Button(action: {
                withAnimation{vm.makeLogin()}

            }, label: {
                
                    
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color("mains"))
                        .overlay(
                            
                            Text("LOGIN")
                                .foregroundColor(.white)
                                .font(.system(size: 22))
                                .fontWeight(.bold)
                        )
                        
                
                
            })
            .frame(height:50)
            .shadow(color: Color("bord"), radius: 5, x: 5, y: -2.5)

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
