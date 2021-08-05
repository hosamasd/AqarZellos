//
//  ContentView.swift
//  AqarZellos
//
//  Created by hosam on 02/08/2021.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("isUserLogin") var isUserLogin: Bool = false
    
    var body: some View {
        
        
//        ZStack {
//
//            if isUserLogin {
//                HomeTab()
//                    .transition(.move(edge: .bottom))
//            }
//            else {
//                HomeWelcome()
//            }
//
//        }
        
        
        //        HomeFavorites()
        //        HomeCPost(show: .constant(false))
        //        HomeTab()
        
        //        MainHome()
//                NavigationView {
                    HomeShowProfile()
//        HomeSettings(show: .constant(false))
        //
//                }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
