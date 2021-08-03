//
//  HomeShowProfile.swift
//  AqarZellos
//
//  Created by hosam on 03/08/2021.
//

import SwiftUI

struct HomeShowProfile: View {
    @StateObject var vm = HomeShowProfileViewModel()
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            
            Image("1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth:getFrameSize().width,maxHeight: getFrameSize().height+20)
                .edgesIgnoringSafeArea(.top)
            
            VStack {
                
                ZStack {
                    Image("joshuaRawsonHarrisLx0PplSjE2GUnsplash")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    
                    //                    VStack {
                    HStack {
                        
                        Button(action: {withAnimation{
                            
                            presentationMode.wrappedValue.dismiss()
                        }}, label: {
                            Image(systemName: "chevron.backward")
                                .foregroundColor(.white)
                            
                        })
                        
                        
                        Spacer()
                    }
                    //                        Spacer()
                    //                    }
                    .padding(.horizontal,24)
                    
                    .frame(width:getFrameSize().width)
                    .padding(.top,-100)
                    
                }
                .frame(width:getFrameSize().width,height:getFrameSize().height/3)
                .edgesIgnoringSafeArea(.top)
                
                ZStack(alignment:Alignment(horizontal: .center, vertical: .top)) {
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        
                        VStack {
                            
                            Text("Hosam Mohamed")
                                .foregroundColor(Color.black.opacity(0.6))
                            
                            HStack{
                                
                                Spacer()
                                
                                ZStack {
                                    
                                    RoundedRectangle(cornerRadius: 32)
                                        .strokeBorder()
                                    
                                    HStack{
                                        
                                        Button(action: {withAnimation{vm.isPost.toggle()}}, label: {
                                            Text("Posts")
                                                .font(.system(size: 20))
                                                .fontWeight(.semibold)
                                                .foregroundColor(!vm.isPost ? Color("mains") : Color.black.opacity(0.6))
                                        })
                                        
                                        Divider()
                                            .padding(.horizontal,24)
                                        
                                        Button(action: {withAnimation{vm.isPost.toggle()}}, label: {
                                            Text("Details")
                                                .font(.system(size: 20))
                                                .fontWeight(.semibold)
                                                .foregroundColor(vm.isPost ? Color("mains") : Color.black.opacity(0.6))
                                        })
                                        
                                    }
                                    
                                }
                                .padding(.leading,24)
                                .frame( width:260,height: 40)
                                
                                Button(action: {}, label: {
                                    Image("aa")
                                        .resizable()
                                        .frame(width: 40, height: 40)
                                        .clipShape(Circle())
                                })
                                
                                
                                Spacer()
                            }
                            .padding(.top,20)
                            
                            ZStack {
                                HomeShowProfilePosts(vm: vm)
                                    .padding(.top,20)
                                    .padding(.horizontal)
                                    .transition(.move(edge: .trailing))

                                    .opacity(!vm.isPost ? 1 : 0)
                           
                                if vm.isPost {
                            ProfileDetailsView(vm:vm)
                                
                                .padding(.top,-200)
                                .padding(.horizontal,64)
                                .transition(.move(edge: .trailing))
//                                .opacity(!vm.isPost ? 1 : 0)
                                    
                                }
                                
                            }
                            
                        }
                        .padding(.top,20)
                        //                        .offset(y:80)
                        
                        
                    }
                    .padding(.top,100)
                    .frame(width:getFrameSize().width)
                    
                    .background(Color.white)
                    // its asking some thing here I dont know may be its bug...
                    .shadow(radius: 0)
                    //                .padding(.top)
                    .clipShape(CustomCorners(corners: [.topRight,.topLeft], width: 30))
                    
                    
                    Circle()
                        .fill(Color.white)
                        .frame(width: 140, height: 140)
                        .overlay(
                            
                            Image("jackFinniganRriAi0NhcbcUnsplash")
                                .resizable()
                                .frame(width: 130, height: 130)
                            
                        )
                        .offset(y:-65)
                    
                }
                .offset(y:-40)
                
                Spacer()
            }
            
            if vm.isLoading {
                LoadingCubeOffset()
            }
            
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct HomeShowProfile_Previews: PreviewProvider {
    static var previews: some View {
        HomeShowProfile()
    }
}
