//
//  HomeShowProfilePosts.swift
//  AqarZellos
//
//  Created by hosam on 03/08/2021.
//

import SwiftUI

struct HomeShowProfilePosts: View {
    @State var columns = Array(repeating: GridItem(.flexible(), spacing: 8), count: 2)

    @ObservedObject var vm : HomeShowProfileViewModel

    var body: some View {
        
        VStack {
        LazyVGrid(columns: columns,spacing: 8){

            // assigning name as ID...
            
            ForEach(vm.postsArray){gradient in
                
                
                PostRowView(x: gradient)
            }
        }
        .padding(.bottom)
    }
    .padding(.horizontal,24)
            
            
        
    }
}

struct HomeShowProfilePosts_Previews: PreviewProvider {
    static var previews: some View {
        HomeShowProfile()
    }
}
