//
//  Homenotifications.swift
//  AqarZellos
//
//  Created by hosam on 03/08/2021.
//

import SwiftUI

struct Homenotifications: View {
    @State var columns = Array(repeating: GridItem(.flexible(), spacing: 0), count: 1)
    @StateObject var vm = HomenotificationsViewModel()
    
    var body: some View {
        ZStack {
            
            Image("1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth:getFrameSize().width,maxHeight: getFrameSize().height+20)
                .edgesIgnoringSafeArea(.top)
            
            VStack {
                
                HomenotificationsTopView()
                    .padding(.horizontal,24)
                
                if vm.notificationArray.isEmpty {
//                    Text("No Results Found")
//                        .padding(.top,20)
                }
                else {
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        
                        
                        LazyVGrid(columns: columns,spacing: 8){
                            
                            // assigning name as ID...
                            
                            ForEach(vm.notificationArray){gradient in
                                
                                
                                NotfyRowView(x: gradient)
                            }
                        }
                        .padding(.horizontal,8)
                        .padding(.bottom)
                        .padding(.top)
                        
                    }
                    .zIndex(0)
                    
                    .border(width: 10, edges: [.top], color: Color("bord"))
                    
                    .padding(.top,20)
                }
                
                Spacer()
                
            }
            .padding(.top,40)
            .padding(.bottom,80)

            if vm.isLoading {
                LoadingCapsuleSpacing()
            }
            
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct Homenotifications_Previews: PreviewProvider {
    static var previews: some View {
        Homenotifications()
    }
}
