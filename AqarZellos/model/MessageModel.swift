//
//  MessageModel.swift
//  AqarZellos
//
//  Created by hosam on 03/08/2021.
//

import SwiftUI

struct MessageModel:  Identifiable,Hashable {
    var id = UUID().uuidString

    var name,pic,desc : String
    var date = "6:23pm"
    
    var myMsg:Bool = false
    var isShow = false

    var photo: Data?

}

