//
//  HomeEditViewModel.swift
//  AqarZellos
//
//  Created by hosam on 03/08/2021.
//

import SwiftUI

class HomeEditViewModel: ObservableObject {
    
    @Published var image_Data = Data(count: 0)
    @Published var picker = false
    @Published  var shouldPresentImagePicker = false
    @Published  var shouldPresentActionScheet = false
    
    @Published  var shouldPresentImagePickerCover = false
    @Published  var shouldPresentActionScheetCover = false
    
    @Published  var shouldPresentCamera = false
    @Published  var image: Image? = Image("jackFinniganRriAi0NhcbcUnsplash")
    @Published  var coverimage: Image? = Image("joshuaRawsonHarrisLx0PplSjE2GUnsplash")

    @Published var alert = false
    @Published var alertMsg = ""
    @Published var isLoading = false
    
    @Published var isEditProf = false
    @Published var isEditCover = false
    
    @Published var isEditProfemail = false
    @Published var isEditCoverphone = false
    @Published var isEditProfface = false
    @Published var isEditCoveraddress = false
    @Published var isEditCoverwebsite = false

    @Published var email = "hosamelmalt@gmail.com"
    @Published var phone = "01001384592"
    @Published var face = "hosam"
    @Published var address = "cairo"
    @Published var website = "hosam.net"

    
    

}
