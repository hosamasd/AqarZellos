//
//  ProfileImgCoverRowView.swift
//  AqarZellos
//
//  Created by hosam on 03/08/2021.
//

import SwiftUI

struct ProfileImgCoverRowView: View {
    @ObservedObject var vm:HomeEditViewModel
    var body: some View {
        VStack {
            
            HStack {
                Text("Cover Picture")
                    .font(.system(size: 18))
                    .fontWeight(.bold)
                    .foregroundColor(Color.black.opacity(0.4))

                
                Spacer()
                
                Button(action: {
                    withAnimation{
                        vm.isEditCover.toggle()
                    }
                }, label: {
                    Text("Edit")
                        .foregroundColor(.green)
                        .font(.system(size: 18))
                        .fontWeight(.bold)
                })
                
            }
            
            if vm.coverimage == Image( "joshuaRawsonHarrisLx0PplSjE2GUnsplash"){

            
            Image("joshuaRawsonHarrisLx0PplSjE2GUnsplash")
                .resizable()
                .frame( height: 165)
                .cornerRadius(10)
            
                .fullScreenCover(isPresented: $vm.shouldPresentImagePickerCover, content: {
                    SUImagePickerView(sourceType: self.vm.shouldPresentCamera ? .camera : .photoLibrary, image: self.$vm.coverimage, isPresented: self.$vm.shouldPresentImagePickerCover)

                })
                .actionSheet(isPresented: $vm.isEditCover) { () -> ActionSheet in
                    ActionSheet(title: Text("Choose mode"), message: Text("Please choose your preferred mode to set your profile image"), buttons: [ActionSheet.Button.default(Text("Camera"), action: {
                        self.vm.shouldPresentImagePickerCover = true
                        self.vm.shouldPresentCamera = true

                    }), ActionSheet.Button.default(Text("Photo Library"), action: {
                        self.vm.shouldPresentImagePickerCover = true
                        self.vm.shouldPresentCamera = false
                    }), ActionSheet.Button.cancel()])
                }
                
            }
            else {
                
                vm.coverimage!
                    .resizable()
                    .frame(width: 94, height: 94)
                    .clipShape(Circle())
                
                    .fullScreenCover(isPresented: $vm.shouldPresentImagePickerCover, content: {
                        SUImagePickerView(sourceType: self.vm.shouldPresentCamera ? .camera : .photoLibrary, image: self.$vm.coverimage, isPresented: self.$vm.shouldPresentImagePickerCover)

                    })
                    .actionSheet(isPresented: $vm.isEditCover) { () -> ActionSheet in
                        ActionSheet(title: Text("Choose mode"), message: Text("Please choose your preferred mode to set your profile image"), buttons: [ActionSheet.Button.default(Text("Camera"), action: {
                            self.vm.shouldPresentImagePickerCover = true
                            self.vm.shouldPresentCamera = true

                        }), ActionSheet.Button.default(Text("Photo Library"), action: {
                            self.vm.shouldPresentImagePickerCover = true
                            self.vm.shouldPresentCamera = false
                        }), ActionSheet.Button.cancel()])
                    }
                
            }
            
            
        }
    }
}

struct ProfileImgCoverRowView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileImgCoverRowView(vm:HomeEditViewModel())
    }
}
