//
//  ex_Image.swift
//  AqarZellos
//
//  Created by hosam on 02/08/2021.
//

import SwiftUI

extension Image {
    init(_ name: String, defaultImage: String) {
        if let img = UIImage(named: name) {
            self.init(uiImage: img)
        } else {
            self.init(defaultImage)
        }
    }
    
    init(_ name: String, defaultSystemImage: String) {
        if let img = UIImage(named: name) {
            self.init(uiImage: img)
        } else {
            self.init(systemName: defaultSystemImage)
        }
    }
}

//Image("landscape", defaultSystemImage: "questionmark.circle.fill")
//
//Image("landscape", defaultImage: "empty-photo")
