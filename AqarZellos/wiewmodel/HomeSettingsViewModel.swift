//
//  HomeSettingsViewModel.swift
//  AqarZellos
//
//  Created by hosam on 05/08/2021.
//

import SwiftUI

class HomeSettingsViewModel: ObservableObject {
    @AppStorage("isUserLogin") var isUserLogin: Bool = false
    
    @Published var alert = false
    @Published var alertMsg = ""
    @Published var isLoading = false
    
    
    func logOut()  {
        
        withAnimation{isLoading.toggle()}
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+5) {
            withAnimation{self.isLoading.toggle()}
            DispatchQueue.main.async {
                self.isUserLogin.toggle()
            }
            
        }
    }
}
