//
//  HomeTab.swift
//  AqarZellos
//
//  Created by hosam on 04/08/2021.
//

import SwiftUI

struct HomeTab: View {
    @State var index = 0

    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom), content: {
            
            //            if vm.isLoadingState {
            //
            //                Indicator()
            //
            //            }
            //            else {
            
            //            NavigationView{
            if index == 0 {
                Color.black
                //                SSecondMainHome()
                //                    //                    SecondMainHome()
                //                    .environmentObject(vm)
                //                    .environmentObject(vmm)
            }
            else if index == 1   {
                Color.blue
                
            }
            else {
                Color.orange
            }
            
        MyTab(index: $index)
            
            
//            if isHideTabBar {
//                Color.green
//
//            }
        })
        //        .environmentObject(vm)
        .edgesIgnoringSafeArea(.all)        //        )
    }    }


struct HomeTab_Previews: PreviewProvider {
    static var previews: some View {
        HomeTab()
    }
}
