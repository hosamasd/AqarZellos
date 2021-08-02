//
//  HomeLogSignViewModel.swift
//  AqarZellos
//
//  Created by hosam on 02/08/2021.
//

import SwiftUI

class HomeLogSignViewModel: ObservableObject {
   
    @Published var isLogin=true
    @Published var emailLogin=""
    @Published var passLogin=""
    
    @Published var emailSign=""
    @Published var usernameSign=""
    @Published var PhoneSign=""
//    @Published var addressSign=""

    @Published var passSign=""
    @Published var rePassSign=""
    
    @Published var isShowPass=false
    @Published var isShowRePass=false


}
