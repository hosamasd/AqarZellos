//
//  HomeTab.swift
//  AqarZellos
//
//  Created by hosam on 04/08/2021.
//

import SwiftUI

struct HomeTab: View {
    @StateObject var vm = HomeFavoritesViewModel()
    @StateObject var vmm = HomenotificationsViewModel()
    @StateObject var vmmm = HomeFilterViewModel()

    @State var index = 0
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom), content: {
            
            if index == 0 {
                MainHome()
                    .environmentObject(vmmm)
            }
            else if index == 1   {
                HomePost()
                
            }
            else if index == 2   {
                
                HomeFavorites()
                    .environmentObject(vm)
            }            else {
                Homenotifications()
                    .environmentObject(vmm)
            }
            
            MyTab(index: $index)
            
        })
        .edgesIgnoringSafeArea(.all)        //        )
    }    }


struct HomeTab_Previews: PreviewProvider {
    static var previews: some View {
        HomeTab()
    }
}
