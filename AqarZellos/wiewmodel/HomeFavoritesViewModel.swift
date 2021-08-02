//
//  HomeFavoritesViewModel.swift
//  AqarZellos
//
//  Created by hosam on 02/08/2021.
//

import SwiftUI

class HomeFavoritesViewModel: ObservableObject {
    
    @Published var alert = false
    @Published var alertMsg = ""
    @Published var isLoading = false
    
    @Published var favorArray:[FavoriteModel] = []
    
    init() {
        getDatas()
    }
    
    func getDatas()  {
//        withAnimation{isLoading.toggle()}
        
//        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+0) {
//            withAnimation{self.isLoading.toggle()}
            
            self.favorArray = [
                .init(name: "Home", time: "1:48 Hour ago ", pic: "images1"),
                .init(name: "Home", time: "1:48 Hour ago ", pic: "images1"),
                .init(name: "Home", time: "1:48 Hour ago ", pic: "images1"),
                .init(name: "Home", time: "1:48 Hour ago ", pic: "images1"),
                .init(name: "Home", time: "1:48 Hour ago ", pic: "images1"),
                .init(name: "Home", time: "1:48 Hour ago ", pic: "images1"),
                .init(name: "Home", time: "1:48 Hour ago ", pic: "images1"),
                .init(name: "Home", time: "1:48 Hour ago ", pic: "images1"),
                .init(name: "Home", time: "1:48 Hour ago ", pic: "images1"),
                
            ]
            
//        }
        
        
    }
}

