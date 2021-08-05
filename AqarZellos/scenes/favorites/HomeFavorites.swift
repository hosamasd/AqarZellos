//
//  HomeFavorites.swift
//  AqarZellos
//
//  Created by hosam on 02/08/2021.
//

import SwiftUI

struct HomeFavorites: View {
    @State var columns = Array(repeating: GridItem(.flexible(), spacing: 12), count: 2)
    @StateObject var vm = HomeFavoritesViewModel()
    
    var body: some View {
        ZStack {
            
            Image("1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth:getFrameSize().width,maxHeight: getFrameSize().height+20)
                .edgesIgnoringSafeArea(.top)
            
            VStack {
                
                HomeFavoritesTopView()
                    .padding(.horizontal,24)
                
                if vm.favorArray.isEmpty {
//                    Text("No Results Found")
//                        .padding(.top,20)
                }
                else {
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        
                        
                        LazyVGrid(columns: columns,spacing: 12){
                            
                            // assigning name as ID...
                            
                            ForEach(vm.favorArray){gradient in
                                
                                
                                FavRowView(x: gradient)
                            }
                        }
                        .padding(.horizontal,24)
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

struct HomeFavorites_Previews: PreviewProvider {
    static var previews: some View {
        HomeFavorites()
    }
}
