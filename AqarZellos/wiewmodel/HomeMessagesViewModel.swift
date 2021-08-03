//
//  HomeMessagesViewModel.swift
//  AqarZellos
//
//  Created by hosam on 03/08/2021.
//

import SwiftUI

class HomeMessagesViewModel: ObservableObject {
    
    @Published var alert = false
    @Published var alertMsg = ""
    @Published var isLoading = false
    
    @Published var messagesArray:[MessageModel] = []
    
    init() {
        getDatas()
    }
    
    func getDatas()  {
//        withAnimation{isLoading.toggle()}
        
//        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+0) {
//            withAnimation{self.isLoading.toggle()}
            
            self.messagesArray = [
                .init(name: "Marie Winter", pic: "sss", desc: "Happiness is not something readymade. \nIt comes from your own actions."),
                    .init(name: "Marie Winter", pic: "sss", desc: "Happiness is not something readymade. \nIt comes from your own actions."),
                    .init(name: "Marie Winter", pic: "sss", desc: "Happiness is not something readymade. \nIt comes from your own actions."),
                    .init(name: "Marie Winter", pic: "sss", desc: "Happiness is not something readymade. \nIt comes from your own actions."),
                .init(name: "Marie Winter", pic: "sss", desc: "Happiness is not something readymade. \nIt comes from your own actions.",isShow:true),
                    .init(name: "Marie Winter", pic: "sss", desc: "Happiness is not something readymade. \nIt comes from your own actions."),
                    .init(name: "Marie Winter", pic: "sss", desc: "Happiness is not something readymade. \nIt comes from your own actions."),
                    .init(name: "Marie Winter", pic: "sss", desc: "Happiness is not something readymade. \nIt comes from your own actions.",isShow:true),
                    .init(name: "Marie Winter", pic: "sss", desc: "Happiness is not something readymade. \nIt comes from your own actions."),
                    .init(name: "Marie Winter", pic: "sss", desc: "Happiness is not something readymade. \nIt comes from your own actions.")

            ]
            
//        }
        
        
    }
}
