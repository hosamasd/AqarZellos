//
//  HomeFilterTopView.swift
//  AqarZellos
//
//  Created by hosam on 04/08/2021.
//

import SwiftUI
import MapKit

struct HomeFilterTopView: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var show:Bool
    @EnvironmentObject var vm : HomeFilterViewModel

    var body: some View {
        HStack {
            
            Button(action: {withAnimation{
                show.toggle()
                vm.postsArray.removeAll()
                vm.region = MKCoordinateRegion()
                vm.getDatas()
                    presentationMode.wrappedValue.dismiss()
            }}, label: {
                Image(systemName: "chevron.backward")
                    .foregroundColor(.white)
                
        })
            
            Spacer()
            
            Text("Filter")
                .font(.system(size: 18))
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
            Spacer()
        }
        
        
    }
}

struct HomeFilterTopView_Previews: PreviewProvider {
    static var previews: some View {
        HomeFilterTopView(show: .constant(false))
    }
}
