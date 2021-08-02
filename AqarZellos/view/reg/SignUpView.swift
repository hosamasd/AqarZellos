//
//  SignUpView.swift
//  AqarZellos
//
//  Created by hosam on 02/08/2021.
//

import SwiftUI

struct SignUpView: View {
    @ObservedObject var vm:HomeLogSignViewModel
    
    var body: some View {
        VStack {
            VStack(spacing:30) {
                
                VStack(spacing:30) {
                    TFWithBorder(txt: $vm.usernameSign,hint:"Username", isPass: .constant(false))
                    
                    
                    TFWithBorder(txt: $vm.PhoneSign,hint:"Phone", isPass: .constant(false))
                    
                    TFWithBorder(txt: $vm.emailLogin,hint:"Email", isPass: .constant(false))
                    
                }
                
                TFWithBorder(txt: $vm.passSign,hint:"Password",isHide: true,isSecure: vm.isShowPass,isPass: $vm.isShowPass)
                
                
                TFWithBorder(txt: $vm.rePassSign,hint:"Confirm Password",isHide: true,isSecure: vm.isShowRePass,isPass: $vm.isShowRePass)
                    
                    .padding(.bottom,40)
                
                
                
                Button(action: {
                    
                }, label: {
                    
                    ZStack {
                        
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color("bord"))
                        
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color("mains"))
                            .overlay(
                                
                                Text("Sign UP")
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
                
            }
            
            Text("OR sign Up WITH")
                .foregroundColor(.white)
                .padding()
            
            HStack {
                
                Image("facebook2")
                    .padding(.trailing)
                
                Image("googlePlus")
                
                
            }
            
            Spacer()
            
        }
        .padding(.horizontal,32)
        .padding(.bottom,getSafeArea()?.bottom == 0 ? 45 : 30)
        
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        //        SignUpView(vm:HomeLogSignViewModel())
    }
}
