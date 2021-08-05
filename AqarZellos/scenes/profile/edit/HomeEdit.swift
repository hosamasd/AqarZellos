//
//  HomeEdit.swift
//  AqarZellos
//
//  Created by hosam on 03/08/2021.
//

import SwiftUI

struct HomeEdit: View {
    @State var columns = Array(repeating: GridItem(.flexible(), spacing: 12), count: 1)
    @StateObject var vm = HomeEditViewModel()
    
    var body: some View {
        ZStack {
            
            Image("1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth:getFrameSize().width,maxHeight: getFrameSize().height+20)
                .edgesIgnoringSafeArea(.top)
            
            VStack {
                
                HomeEditTopView()
                    .padding(.horizontal,24)
                
                VStack {
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        
                        
                        VStack(spacing:16) {
                            ProfileImgRowView(vm: vm)
                            
                            
                            ProfileImgCoverRowView(vm: vm)
                            
                            ProfileMainRowView(text: "Email address", x: $vm.email, isOpen: $vm.isEditProfemail)//, vm: <#T##HomeEditViewModel#>)
                            
                            ProfileMainRowView(text: "Phone number", x: $vm.phone, isOpen: $vm.isEditCoverphone)
                            
                            ProfileMainRowView(text: "Facebook", x: $vm.face, isOpen: $vm.isEditProfface)
                            
                            ProfileMainRowView(text: "Address", x: $vm.address, isOpen: $vm.isEditCoveraddress)
                            
                            ProfileMainRowView(text: "Website", x: $vm.website, isOpen: $vm.isEditCoverwebsite)
                        }
                        .padding(.top,20)
                        .padding(.horizontal,24)
                        .padding(.bottom)
                        
                    }
                    .padding(.bottom)
                    
                    Button(action: {}, label: {
                        
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color("mains"))
                            .overlay(
                                
                                Text("Save")
                                    .foregroundColor(.white)
                                    .font(.system(size: 22))
                                    .fontWeight(.bold)
                            )
                            .frame(height:44)
                        
                        
                    })
                    .padding(.horizontal,24)
                    .padding(.bottom,getSafeArea()?.bottom == 0 ? 15 : 15)
                }
                
                .zIndex(0)
                .background(Color.white)
                // its asking some thing here I dont know may be its bug...
                .shadow(radius: 0)
                //                .padding(.top)
                .clipShape(CustomCorners(corners: [.topRight,.topLeft], width: 30))
                
                .padding(.top)
                //                .padding(.bottom)
                
                
                
                Spacer()
                
            }
            .padding(.top,40)
            
            if vm.isLoading {
                LoadingCapsuleSpacing()
            }
            
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        
//        .actionSheet(isPresented: $vm.isEditCover) { () -> ActionSheet in
//            ActionSheet(title: Text("Choose mode"), message: Text("Please choose your preferred mode to set your profile image"), buttons: [ActionSheet.Button.default(Text("Camera"), action: {
//                self.vm.shouldPresentImagePicker = true
//                self.vm.shouldPresentCamera = true
//                
//            }), ActionSheet.Button.default(Text("Photo Library"), action: {
//                self.vm.shouldPresentImagePicker = true
//                self.vm.shouldPresentCamera = false
//                
//            }), ActionSheet.Button.cancel()])
//        }

    }
}

struct HomeEdit_Previews: PreviewProvider {
    static var previews: some View {
        HomeEdit()
    }
}
