//
//  HomeChatViewModel.swift
//  AqarZellos
//
//  Created by hosam on 03/08/2021.
//

import SwiftUI

class HomeChatViewModel: ObservableObject {
    
    @Published var alert = false
    @Published var alertMsg = ""
    @Published var isLoading = false
    
    
    @Published var showEmoj = false

    @Published var txtMessage=""
    @Published var messagesArray:[MessageModel] = [MessageModel]()
    
    init() {
        getDatas()
    }
    
    func getDatas()  {
//        withAnimation{isLoading.toggle()}
        
//        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+0) {
//            withAnimation{self.isLoading.toggle()}
            
            self.messagesArray = [
                .init(name: "Marie Winter", pic: "sss", desc: "On the other hand, we denounce with righteous indignation",myMsg:false,isShow:true),
                    .init(name: "Marie Winter", pic: "sss", desc: "dislike men who are so beguiled and demoralized by the charms of pleasure of the moment",myMsg:true,isShow:true),
                    .init(name: "Marie Winter", pic: "sss", desc: "Happiness is not something readymade. \nIt comes from your own actions.",myMsg:false,isShow:true),
                    .init(name: "Marie Winter", pic: "sss", desc: "Happiness is not something readymade. \nIt comes from your own actions.",myMsg:true,isShow:true),
                .init(name: "Marie Winter", pic: "sss", desc: "Happiness is not something readymade. \nIt comes from your own actions.",myMsg:false,isShow:true),
                    .init(name: "Marie Winter", pic: "sss", desc: "Happiness is not something readymade. \nIt comes from your own actions.",myMsg:true,isShow:true),
                    .init(name: "Marie Winter", pic: "sss", desc: "Happiness is not something readymade. \nIt comes from your own actions.",myMsg:false,isShow:true),
                    .init(name: "Marie Winter", pic: "sss", desc: "Happiness is not something readymade. \nIt comes from your own actions.",isShow:true),
                    .init(name: "Marie Winter", pic: "sss", desc: "Happiness is not something readymade. \nIt comes from your own actions.",myMsg:false,isShow:true),
                    .init(name: "Marie Winter", pic: "sss", desc: "Happiness is not something readymade. \nIt comes from your own actions.",myMsg:true,isShow:true),

            ]
            
//        }
        
        
    }
}
