//
//  BubbleArrow.swift
//  AqarZellos
//
//  Created by hosam on 03/08/2021.
//

import SwiftUI

struct BubbleArrow : Shape {
    
    var myMsg : Bool
    
    func path(in rect: CGRect) -> Path {
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: myMsg ?  [.topLeft,.bottomLeft,.bottomRight] : [.topRight,.bottomLeft,.bottomRight], cornerRadii: CGSize(width: 18, height: 18))
        
        return Path(path.cgPath)
    }
}
