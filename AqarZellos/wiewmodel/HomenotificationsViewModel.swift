//
//  HomenotificationsViewModel.swift
//  AqarZellos
//
//  Created by hosam on 03/08/2021.
//

import SwiftUI

class HomenotificationsViewModel:ObservableObject {
    
    @Published var alert = false
    @Published var alertMsg = ""
    @Published var isLoading = false
    
    @Published var notificationArray:[NotifyModek] = []
    
    init() {
        getDatas()
    }
    
    func getDatas()  {
        //        withAnimation{isLoading.toggle()}
        
        //        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+0) {
        //            withAnimation{self.isLoading.toggle()}
        
        self.notificationArray = [
            .init(name: "Home", time: "1:48 Hour ago ", pic: "images1",desc: "On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment"),
            .init(name: "Home", time: "1:48 Hour ago ", pic: "images1",desc: "On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment"),
            .init(name: "Home", time: "1:48 Hour ago ", pic: "images1",desc: "On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment"),
            .init(name: "Home", time: "1:48 Hour ago ", pic: "images1",desc: "On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment"),
            .init(name: "Home", time: "1:48 Hour ago ", pic: "images1",desc: "On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment"),
            .init(name: "Home", time: "1:48 Hour ago ", pic: "images1",desc: "On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment"),
            .init(name: "Home", time: "1:48 Hour ago ", pic: "images1",desc: "On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment"),
            .init(name: "Home", time: "1:48 Hour ago ", pic: "images1",desc: "On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment"),
            .init(name: "Home", time: "1:48 Hour ago ", pic: "images1",desc: "On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment"),
            
        ]
        
        //        }
        
        
    }
}
