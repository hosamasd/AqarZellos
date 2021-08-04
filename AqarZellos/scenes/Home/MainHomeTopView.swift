//
//  MainHomeTopView.swift
//  AqarZellos
//
//  Created by hosam on 04/08/2021.
//

import SwiftUI

struct MainHomeTopView: View {
    @State var shProf=false
    @State var shFilter=false
    @ObservedObject var vm : HomeFilterViewModel
    
    var body: some View {
        HStack {
            
            Button(action: {withAnimation{
                shProf.toggle()
                //                    presentationMode.wrappedValue.dismiss()
            }}, label: {
                Image( "jackFinniganRriAi0NhcbcUnsplash")
                    .resizable()
                    .frame(width: 32, height: 32)
                    .foregroundColor(.white)
                
                
            })
            
            
            Spacer()
            
            Button(action: {withAnimation{
                shFilter.toggle()
                //                    presentationMode.wrappedValue.dismiss()
            }}, label: {
                Image( "qqqq")
                    .foregroundColor(.white)
                
            })
            
        }
        
        .fullScreenCover(isPresented: $shProf, content: {
            NavigationView{
                HomeSettings(show: $shProf)
            }
        })
        
        .fullScreenCover(isPresented: $shFilter, content: {
            HomeFilter(vm: vm, show: $shFilter)
        })
        
        
        
        
    }
}

struct MainHomeTopView_Previews: PreviewProvider {
    static var previews: some View {
        MainHomeTopView( vm: HomeFilterViewModel())
    }
}
