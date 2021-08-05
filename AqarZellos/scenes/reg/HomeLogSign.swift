//
//  HomeLogSign.swift
//  AqarZellos
//
//  Created by hosam on 02/08/2021.
//

import SwiftUI

struct HomeLogSign: View {
    
    @StateObject var vm = HomeLogSignViewModel()
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ZStack {
            
            Image("1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth:getFrameSize().width,maxHeight: getFrameSize().height+20)
                .edgesIgnoringSafeArea(.top)
            
            VStack {
                
                Button(action: {withAnimation{
                    if vm.isForget {
                        vm.isForget.toggle()
                    }else if vm.isLogin {
                        vm.isLogin.toggle()
                    }else {
                        presentationMode.wrappedValue.dismiss()
                    }
                }}, label: {
                    Image(systemName: "chevron.backward")
                        .foregroundColor(.white)
                        .frame(maxWidth:.infinity,alignment: .leading)
                    
                })
                
                Spacer()
                
                
                
                
                
                VStack{
                    
                    ZStack {
                        Text(vm.getText())
                            .foregroundColor(.white)
                            .font(.system(size: 30))
                            .fontWeight(.bold)
                            .opacity(vm.isLogin ? 0 : 1)
                        
                        if vm.isLogin {
                            VStack {
                                Text("Create Your")
                                    .fontWeight(.bold)
                                Text("account")
                                    .fontWeight(.bold)
                                
                            }
                            .foregroundColor(.white)
                            .font(.system(size: 30))
                            //                                .fontWeight(.bold)
                        }
                        
                    }
                    .padding(.bottom,isSmallDevice() ? 60 : 150)
                    
                    //                        Spacer()
                    
                    ZStack {
                        
                        LoginView(vm: vm)
                            .opacity(vm.isLogin ? 0 : 1)
                            .opacity(vm.isForget ? 0 : 1)
                        
                        if vm.isLogin {
                            
                            SignUpView(vm: vm)
                                .transition(.move(edge: .trailing))
                                .opacity(vm.isForget ? 0 : 1)
                            
                        }
                        
                        if vm.isForget {
                            
                            ForgetView(vm: vm)
                                .transition(.move(edge: .leading))
                        }
                        
                    }
                }
                .padding(.top,60)
                
                
                
            }
            .padding(.horizontal)
            .padding(.top,40)
            
            
            if vm.isLoading {
//                LoadingCircleOpacity()
                LoadingCapsuleSpacing()
            }
        }
        .alert(isPresented: $vm.alert) {
            
            Alert(title: Text("Error"), message: Text(self.vm.alertMsg), dismissButton: .default(Text("Ok")))
        }
    }
}

struct HomeLogSign_Previews: PreviewProvider {
    static var previews: some View {
        HomeLogSign()
    }
}
