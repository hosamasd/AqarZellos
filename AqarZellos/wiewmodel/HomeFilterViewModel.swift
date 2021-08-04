//
//  HomeFilterViewModel.swift
//  AqarZellos
//
//  Created by hosam on 04/08/2021.
//

import SwiftUI

class HomeFilterViewModel: ObservableObject {
    @Published var nameDrop = ""
    @Published var typeDrop = ""
    @Published var areaDrop = ""

    //slider
    @State var minPrice:CGFloat = 2000
    @State var maxPrice:CGFloat = 2000000
    
    @State var minSpace:CGFloat = 100
    @State var maxSpace:CGFloat = 1000000
    
    @Published var roomsNum = 0
    @Published var bathroomNum = 0

    @Published var citys:[String] = [
        "cairo","zagazig","asswan","alex","suez",
        //        "cairo","zagazig","asswan","alex","suez",
        //        "cairo","zagazig","asswan","alex","suez",
        //        "cairo","zagazig","asswan","alex","suez"
    ]
    
    @Published var areas:[String] = [
        "zag","sheiba","nakirea","helwan","porto"
    ]
    
    @Published var types:[String] = [
        "Type1","Type2","Type3","Type4","Type5"
    ]
}
