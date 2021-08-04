//
//  HomeFilter.swift
//  AqarZellos
//
//  Created by hosam on 04/08/2021.
//

import SwiftUI

struct HomeFilter: View {
    @StateObject var vm = HomeFilterViewModel()
    @State var width:CGFloat = 0
    @State var width1:CGFloat = 15
    @StateObject var slider = CustomSlider(start: 200, end: 200000)
    @StateObject var Spaceslider = CustomSlider(start: 100, end: 20000)
    
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
    
    //    func onChange(value:DragGesture.Value)  {
    //        if value.location.x >= 0 && value.location.x <= vm.maxPrice {
    //            self.vm.minPrice=value.location.x
    //        }
    //    }
    //
    //    func secondOnChange(value:DragGesture.Value)  {
    //        if value.location.x <= totalWidth && value.location.x >= vm.minPrice {
    //            self.vm.maxPrice=value.location.x
    //        }
    //    }
    
    func onChange(value:DragGesture.Value)  {
        if value.location.x >= 0 && value.location.x <= width1 {
            self.width=value.location.x
            print(width)
        }
    }
    
    func secondOnChange(value:DragGesture.Value)  {
        if value.location.x <= totalWidth && value.location.x >= width {
            self.width1=value.location.x
            print(width1)
            
        }
    }
    var totalWidth:CGFloat = UIScreen.main.bounds.width-48
    
}

struct HomeFilter_Previews: PreviewProvider {
    static var previews: some View {
        HomeFilter()
    }
}
