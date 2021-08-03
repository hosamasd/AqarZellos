//
//  MessageModel.swift
//  AqarZellos
//
//  Created by hosam on 03/08/2021.
//

import SwiftUI

struct MessageModel:  Identifiable {
    var id = UUID().uuidString
    
    var name,pic,desc : String
    var isShow = false
    
    
}

