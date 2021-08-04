//
//  MainHome.swift
//  AqarZellos
//
//  Created by hosam on 04/08/2021.
//

import SwiftUI

struct MainHome: View {
    @StateObject var vm = HomeFilterViewModel()

    var body: some View {
        ZStack {
            
            Image("1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth:getFrameSize().width,maxHeight: getFrameSize().height+20)
                .edgesIgnoringSafeArea(.top)
            
            VStack {
                
                MainHomeTopView(vm:vm)
                    .padding(.horizontal,24)
                
                Spacer()
            }
            .padding(.top,40)
        }
    }
}

struct MainHome_Previews: PreviewProvider {
    static var previews: some View {
        MainHome()
    }
}
