//
//  DropdownButton.swift
//  XD_Doctor
//
//  Created by hosam on 3/23/21.
//

import SwiftUI

struct MainDropdownButtonss:View {
    @State var expand = false
    @Binding var selectedDrop:String
    var lists =          [
        "cairo","zagazig","asswan","alex","suez",
        "cairo","zagazig","asswan","alex","suez",
        "cairo","zagazig","asswan","alex","suez",
        "cairo","zagazig","asswan","alex","suez"
    ]

    var title = "Insurance company"
    
    var body: some View {
        
        VStack() {
            
//            Spacer()
            VStack(spacing: 30) {
                HStack() {
                    Text(selectedDrop == "" ?  title : selectedDrop)
                        .fontWeight(.bold)
                        .foregroundColor( Color.gray.opacity(0.8))
                    Spacer()
                    Image(systemName: expand ? "chevron.up" : "chevron.down")
                        .resizable()
                        .frame(width: 13, height: 6)
                        .foregroundColor(.black)
//                        .padding(.horizontal,12)
//                        .padding(.vertical,12)
//                        .background(Color.gray.opacity(0.2))
//                        .clipShape(Circle())
                    
                }
//                .background(Color("ssss").opacity(0.6))
                .onTapGesture {
                    self.expand.toggle()
                }
                if expand {
//                    ScrollView {
                    ScrollView(showsIndicators:false) {
//                        VStack  {
                            
                    ForEach(lists,id:\.self) {t in
                        
                        Button(action: {
                            withAnimation{
                                self.selectedDrop=t
                                self.expand.toggle()
                            }
                            
                        }) {
                            Text(t)
                                .padding(10)
                        }
                        .foregroundColor(selectedDrop == t ? .green : .black)
                    }
                        }
//
//                }
//                    .frame(maxHeight:.infinity)
                }
            }
                .padding()
            .background(Color("ssss").opacity(0.6))
                    //            .background(LinearGradient(gradient: .init(colors: [.blue, .purple]), startPoint: .top, endPoint: .bottom))
                    .cornerRadius(15)
                    //            .shadow(color: .gray, radius: 5)
                    .animation(.spring())
            }
        
        }
            
//        }
    }

struct HomeIncubatsion_Previews: PreviewProvider {
    var xx = [
        "cairo","zagazig","asswan","alex","suez"
    ]
    
    static var previews: some View {
        MainDropdownButtonss(selectedDrop: .constant(""),title: "City")
            .modifier(viewModifiers())
            .padding(.horizontal)
            .padding(.bottom)
//        HomeIncubation()
    }
}



struct MainDropdownButton:View {
    @State var expand = false
    @Binding var selectedDrop:String
    var lists =  [String]()
    var title = "Insurance company"
    
    var body: some View {
        VStack() {
            
            Spacer()
            VStack(spacing: 30) {
                HStack() {
                    Text(selectedDrop == "" ?  title : selectedDrop)
                        .fontWeight(.bold)
                        .foregroundColor( .gray)
                    Spacer()
                    Image(systemName: expand ? "chevron.up" : "chevron.down")
                        .resizable()
                        .frame(width: 13, height: 6)
                        .foregroundColor(.black)
                    
                }
                .onTapGesture {
                    self.expand.toggle()
                }
                if expand {
                    
//                    ScrollView(showsIndicators:false) {
//                        VStack  {
                            
                    ForEach(lists,id:\.self) {t in
                        
                        Button(action: {
                            withAnimation{
                                self.selectedDrop=t
                                self.expand.toggle()
                            }
                            
                        }) {
                            Text(t)
                                .padding(10)
                        }
                        .foregroundColor(selectedDrop == t ? .green : .black)
                    }
//                        }
//
//                }
//                    .frame(maxHeight:.infinity)
                }
            }
                .padding()
                    .background(Color.white)
                    //            .background(LinearGradient(gradient: .init(colors: [.blue, .purple]), startPoint: .top, endPoint: .bottom))
                    .cornerRadius(15)
                    //            .shadow(color: .gray, radius: 5)
                    .animation(.spring())
            }
            
        }
    }
    
    struct DropdownButton: View {
        @State var expand = false
        @Binding var selectedDrop:String
        var lists =  [String]()
        
        var body: some View {
            VStack() {
                
                Spacer()
                VStack(spacing: 30) {
                    HStack() {
                        Text(selectedDrop == "" ?  "Insurance company" : selectedDrop)
                            .fontWeight(.bold)
                            .foregroundColor(.gray)
                        Spacer()
                        Image(systemName: expand ? "chevron.up" : "chevron.down")
                            .resizable()
                            .frame(width: 13, height: 6)
                            .foregroundColor(.black)
                        
                    }.onTapGesture {
                        self.expand.toggle()
                    }
                    if expand {
                        Button(action: {
                            withAnimation{
                                self.selectedDrop="Profile"
                                self.expand.toggle()
                            }
                            
                        }) {
                            Text("Profile")
                                .padding(10)
                        }.foregroundColor(.black)
                        Button(action: {
                            withAnimation{
                                self.selectedDrop="Settings"
                                self.expand.toggle()
                            }
                        }) {
                            Text("Settings")
                                .padding(10)
                        }.foregroundColor(.black)
                        Button(action: {
                            withAnimation{
                                self.selectedDrop="Sign out"
                                self.expand.toggle()
                            }
                        }) {
                            Text("Sign out")
                                .padding(10)
                        }.foregroundColor(.black)
                    }
                }
                .padding()
                .background(Color.white)
                //            .background(LinearGradient(gradient: .init(colors: [.blue, .purple]), startPoint: .top, endPoint: .bottom))
                .cornerRadius(15)
                //            .shadow(color: .gray, radius: 5)
                .animation(.spring())
            }
        }
    }
