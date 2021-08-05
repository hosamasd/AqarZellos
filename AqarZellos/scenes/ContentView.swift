//
//  ContentView.swift
//  AqarZellos
//
//  Created by hosam on 02/08/2021.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("isUserLogin") var isUserLogin: Bool = false
    @StateObject var vmmm = HomeFilterViewModel()

    var body: some View {
        
        
        ZStack {

            if !isUserLogin {
//                SHomeChat()
                MainHome()
                    .environmentObject(vmmm)
                    .transition(.move(edge: .bottom))
            }
            else {
                NavigationView {
                    HomeWelcome()
                        .navigationBarTitle("")
                        .navigationBarHidden(true)
                        .navigationBarBackButtonHidden(true)
                }
            }

        }
        
        
        //        HomeFavorites()
        //        HomeCPost(show: .constant(false))
        //        HomeTab()
        
//                MainHome()
//                NavigationView {
//                    HomeShowProfile()
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
