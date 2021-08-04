//
//  HomeFilter.swift
//  AqarZellos
//
//  Created by hosam on 04/08/2021.
//

import SwiftUI

struct HomeFilter: View {
    @StateObject var vm = HomeFilterViewModel()
    
    var body: some View {
        ZStack {
            
            Image("1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth:getFrameSize().width,maxHeight: getFrameSize().height+20)
                .edgesIgnoringSafeArea(.top)
            
            VStack {
                
                HomeFilterTopView()
                    .padding(.horizontal,24)
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    VStack(spacing:24) {
                        
                        MainDropdownButtonss(selectedDrop: $vm.nameDrop,lists:vm.citys,title: "City")
                            .modifier(viewModifiers())
                            .padding(.top,16)
                        
                        MainDropdownButtonss(selectedDrop: $vm.areaDrop,lists:vm.areas,title: "Area")
                            .modifier(viewModifiers())
                        
                        MainDropdownButtonss(selectedDrop: $vm.typeDrop,lists:vm.types,title: "Type")
                            .modifier(viewModifiers())
                        
                        HStack {
                            
                            Text("Num Rooms")
                                .foregroundColor(Color.black.opacity(0.6))
                            Spacer()
                            
                            AddMinusView(number: $vm.roomsNum)
                            
                        }
                        
                        HStack {
                            
                            Text("Num Bathrooms")
                                .foregroundColor(Color.black.opacity(0.6))
                            Spacer()
                            
                            AddMinusView(number: $vm.bathroomNum)
                            
                        }
                        
                        Divider()
                        
                        VStack {
                            Text("Price")
                                .font(.system(size: 16))
                                .fontWeight(.bold)
                                .foregroundColor(Color.black.opacity(0.6))
                                .frame(maxWidth:.infinity,alignment: .leading)
                            
                            Divider()
                            
                        }
                        
                        VStack {
                            Text("Space")
                                .font(.system(size: 16))
                                .fontWeight(.bold)
                                .foregroundColor(Color.black.opacity(0.6))
                                .frame(maxWidth:.infinity,alignment: .leading)
                            
                            
                        }
                        
                        Button(action: {}, label: {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color("logBor"), lineWidth: 1)
                                .overlay(
                                    
                                    Text("Submit")
                                        .font(.system(size: 20))
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.black.opacity(0.2))
                                    
                                )
                        })
                        .frame(height:50)
                        
                    }
                    .padding(.horizontal,24)
                    
                    .padding(.top,20)
                    
                    
                }
                //                .padding(.top,100)
                .frame(width:getFrameSize().width)
                
                .background(Color.white)
                // its asking some thing here I dont know may be its bug...
                .shadow(radius: 0)
                //                .padding(.top)
                .clipShape(CustomCorners(corners: [.topRight,.topLeft], width: 30))
                .padding(.top,20)
                Spacer()
                
            }
            .padding(.top,40)
            
            
            
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct HomeFilter_Previews: PreviewProvider {
    static var previews: some View {
        HomeFilter()
    }
}
