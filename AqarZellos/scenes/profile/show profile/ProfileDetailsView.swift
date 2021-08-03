//
//  ProfileDetailsView.swift
//  AqarZellos
//
//  Created by hosam on 03/08/2021.
//

import SwiftUI

struct ProfileDetailsView: View {
    @ObservedObject var vm : HomeShowProfileViewModel

    var body: some View {
        VStack(alignment:.leading) {
            
            HStack(spacing:12) {
                
                Image("qq")
                    .resizable()
                    .frame(width: 32, height: 32)
                    .clipShape(Circle())
                
                Text(vm.email)
                Spacer()

            }
            
            HStack(spacing:12) {
                
                Image("qq")
                    .resizable()
                    .frame(width: 32, height: 32)
                    .clipShape(Circle())
                
                Text(vm.phone)
                
                Spacer()
                
            }

            
            HStack(spacing:12) {
                
                Image("qq")
                    .resizable()
                    .frame(width: 32, height: 32)
                    .clipShape(Circle())
                
                Text(vm.face)
                Spacer()

            }

            
            HStack(spacing:12) {
                
                Image("qq")
                    .resizable()
                    .frame(width: 32, height: 32)
                    .clipShape(Circle())
                
                Text(vm.address)
                
            }

            
            HStack(spacing:12) {
                
                Image("qq")
                    .resizable()
                    .frame(width: 32, height: 32)
                    .clipShape(Circle())
                
                Text(vm.website)
                Spacer()

            }

        

            
        }
    }
}

struct ProfileDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        HomeShowProfile()
    }
}
