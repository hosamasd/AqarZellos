//
//  HomeFilter.swift
//  AqarZellos
//
//  Created by hosam on 04/08/2021.
//

import SwiftUI
import MapKit

struct HomeFilter: View {
    @EnvironmentObject var vm : HomeFilterViewModel
    @StateObject var slider = CustomSlider(start: 200, end: 200000)
    @StateObject var Spaceslider = CustomSlider(start: 100, end: 20000)
    @Binding var show:Bool
//    @EnvironmentObject var vm : HomeFilterViewModel

    var body: some View {
        ZStack {
            
            Image("1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth:getFrameSize().width,maxHeight: getFrameSize().height+20)
                .edgesIgnoringSafeArea(.top)
            
            VStack {
                
                HomeFilterTopView(show: $show)
                    .environmentObject(vm)
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
                                .padding(.bottom,30)
                            
                            //Slider
                            SSliderView(slider: slider)
                            
                            
                            HStack{
                                
                                Text("\(Int(slider.lowHandle.currentValue)) EGY")
                                    .font(.system(size: 11))
                                    .foregroundColor(Color.black.opacity(0.6))
                                Spacer()
                                
                                Text("\(Int(slider.highHandle.currentValue)) EGY")
                                    .font(.system(size: 11))
                                    .foregroundColor(Color.black.opacity(0.6))
                                
                            }
                            .padding(.vertical)
                            
                            Divider()
                            
                        }
                        
                        VStack {
                            Text("Space")
                                .font(.system(size: 16))
                                .fontWeight(.bold)
                                .foregroundColor(Color.black.opacity(0.6))
                                .frame(maxWidth:.infinity,alignment: .leading)
                                .padding(.bottom,30)
                            
                            //Slider
                            SSliderView(slider: Spaceslider)
                            
                            
                            HStack{
                                
                                Text("\(Int(Spaceslider.lowHandle.currentValue)) M")
                                    .font(.system(size: 11))
                                    .foregroundColor(Color.black.opacity(0.6))
                                Spacer()
                                
                                Text("\(Int(Spaceslider.highHandle.currentValue)) M")
                                    .font(.system(size: 11))
                                    .foregroundColor(Color.black.opacity(0.6))
                                
                            }
                            .padding(.vertical)
                            
                        }
                        
                        Button(action: {withAnimation{ show.toggle()
                                vm.postsArray.removeAll()
                                vm.region = MKCoordinateRegion()

                                vm.getDatas()}}, label: {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color("cha"))
//                                .stroke(Color("logBor"), lineWidth: 1)
                                .overlay(
                                    
                                    Text("Submit")
                                        .font(.system(size: 20))
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.white)//.opacity(0.2))
                                    
                                )
                        })
                        .frame(height:50)
                        //                        .padding(.bottom,20)
                        Spacer()
                        
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
        HomeFilter( show: .constant(false))
    }
}
