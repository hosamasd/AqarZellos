//
//  HomeShowProfileViewModel.swift
//  AqarZellos
//
//  Created by hosam on 03/08/2021.
//

import SwiftUI

class HomeShowProfileViewModel:ObservableObject {
    
    @Published var alert = false
    @Published var alertMsg = ""
    @Published var isLoading = false
    
    @Published var isPost = false
    
    @Published var postsArray:[PostModel] = [
    
//        PostModel(name: "Home", pic: "images1", desc: "10.000 EGY , 150 M"),
//        PostModel(name: "Home", pic: "images1", desc: "10.000 EGY , 150 M"),
//        PostModel(name: "Home", pic: "images1", desc: "10.000 EGY , 150 M"),
//        PostModel(name: "Home", pic: "images1", desc: "10.000 EGY , 150 M"),

    ]

    @Published var email = "hosamelmalt@gmail.com"
    @Published var phone = "01001384592"
    @Published var face = "hosam"
    @Published var address = "cairo"
    @Published var website = "hosam.net"
    
    init() {
        getDatas()
    }
    
    func getDatas()  {
        withAnimation{isLoading.toggle()}
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+2) {
            withAnimation{self.isLoading.toggle()}
            
            self.postsArray = [
            
            PostModel(name: "Home", pic: "images1", desc: "10.000 EGY , 150 M"),
            PostModel(name: "Home", pic: "images1", desc: "10.000 EGY , 150 M"),
            PostModel(name: "Home", pic: "images1", desc: "10.000 EGY , 150 M"),
            PostModel(name: "Home", pic: "images1", desc: "10.000 EGY , 150 M"),

        ]
            
        }
        
        
    }
}

