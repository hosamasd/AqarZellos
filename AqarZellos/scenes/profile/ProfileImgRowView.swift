//
//  ProfileImgRowView.swift
//  AqarZellos
//
//  Created by hosam on 03/08/2021.
//

import SwiftUI

struct ProfileImgRowView: View {
    @ObservedObject var vm:HomeEditViewModel
    var body: some View {
        VStack {
            
            HStack {
                Text("Profile Picture")
                    .font(.system(size: 18))
                    .fontWeight(.bold)
                    .foregroundColor(Color.black.opacity(0.4))
          
            
            Spacer()
            
            Button(action: {
                withAnimation{
                    vm.isEditProf.toggle()
                }
            }, label: {
                Text("Edit")
                    .foregroundColor(.green)
                    .font(.system(size: 18))
                    .fontWeight(.bold)
            })
                
            }
            
            HStack {
                if vm.image == Image( "jackFinniganRriAi0NhcbcUnsplash"){

                Image("jackFinniganRriAi0NhcbcUnsplash")
                    .resizable()
                    .frame(width: 94, height: 94)
                    .clipShape(Circle())
                    .fullScreenCover(isPresented: $vm.shouldPresentImagePicker, content: {
                        SUImagePickerView(sourceType: self.vm.shouldPresentCamera ? .camera : .photoLibrary, image: self.$vm.image, isPresented: self.$vm.shouldPresentImagePicker)

                    })
                    .actionSheet(isPresented: $vm.isEditProf) { () -> ActionSheet in
                        ActionSheet(title: Text("Choose mode"), message: Text("Please choose your preferred mode to set your profile image"), buttons: [ActionSheet.Button.default(Text("Camera"), action: {
                            self.vm.shouldPresentImagePicker = true
                            self.vm.shouldPresentCamera = true

                        }), ActionSheet.Button.default(Text("Photo Library"), action: {
                            self.vm.shouldPresentImagePicker = true
                            self.vm.shouldPresentCamera = false
                        }), ActionSheet.Button.cancel()])
                    }
                    
                }
                
                else {
                    
                    vm.image!
                        .resizable()
                        .frame(width: 94, height: 94)
                        .clipShape(Circle())
                    
                        .fullScreenCover(isPresented: $vm.shouldPresentImagePicker, content: {
                            SUImagePickerView(sourceType: self.vm.shouldPresentCamera ? .camera : .photoLibrary, image: self.$vm.image, isPresented: self.$vm.shouldPresentImagePicker)

                        })
                        .actionSheet(isPresented: $vm.isEditProf) { () -> ActionSheet in
                            ActionSheet(title: Text("Choose mode"), message: Text("Please choose your preferred mode to set your profile image"), buttons: [ActionSheet.Button.default(Text("Camera"), action: {
                                self.vm.shouldPresentImagePicker = true
                                self.vm.shouldPresentCamera = true

                            }), ActionSheet.Button.default(Text("Photo Library"), action: {
                                self.vm.shouldPresentImagePicker = true
                                self.vm.shouldPresentCamera = false
                            }), ActionSheet.Button.cancel()])
                        }
                    
                }
                
                Spacer()
            }
            
        }
    }
}

struct ProfileImgRowView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileImgRowView(vm: HomeEditViewModel())
    }
}
