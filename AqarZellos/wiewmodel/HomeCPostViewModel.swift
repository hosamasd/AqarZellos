//
//  HomeCPostViewModel.swift
//  AqarZellos
//
//  Created by hosam on 04/08/2021.
//

import SwiftUI

class HomeCPostViewModel: ObservableObject {
    
    @Published var alert = false
    @Published var alertMsg = ""
    @Published var isLoading = false
    
}
