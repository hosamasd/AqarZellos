//
//  HomePost.swift
//  AqarZellos
//
//  Created by hosam on 03/08/2021.
//

import SwiftUI

struct HomePost: View {
    @State var columns = Array(repeating: GridItem(.flexible(), spacing: 12), count: 2)
    //    @StateObject var vm = HomeFavoritesViewModel()
    
    var body: some View {
        ZStack {
            
            Image("1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth:getFrameSize().width,maxHeight: getFrameSize().height+20)
                .edgesIgnoringSafeArea(.top)
            
            VStack {
                
                HomePostTopView()
                    .padding(.horizontal,24)
                
                Spacer()

                
                VStack {
                    
                    Spacer()
                    
                    Image("uploadCloud")
                        .padding(.top,30)
               
                
                Text("The maximum upload limit\n for photos is 20")
                    .font(.system(size: 16))
                    .foregroundColor(Color.black.opacity(0.6))
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                
                Spacer()
                
                Text("The first photo is master seen")
                    .font(.system(size: 13))
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
                
                Button(action: {}, label: {
                    
                    RoundedRectangle(cornerRadius: 19)
                        .fill(Color("ssss"))
                        .overlay(
                            
                            Label(
                                title: { Text("Upload master photo ")
                                    .foregroundColor(.black)
                                    .padding(.leading)
                                },
                                icon: { Image("gallery1") }
                            )
                        )
                    
                })
                .frame(width:getFrameSize().width-64,height:44)
                
                Button(action: {}, label: {
                    
                    RoundedRectangle(cornerRadius: 19)
                        .fill(Color("ssss"))
                        .overlay(
                            
                            Label(
                                title: { Text("Camera")
                                    .foregroundColor(.black)
                                    .padding(.leading)
                                },
                                icon: { Image("photoCamera3") }
                            )
                        )
                    
                })
                .frame(width:getFrameSize().width-64,height:44)
                .padding(.top)
                    
                Spacer()
                
                }
                .background(
                Image("Group 3923")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: getFrameSize().width,height: getFrameSize().height-80)
                )
            }
            
          
            .padding(.top,40)

            
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct HomePost_Previews: PreviewProvider {
    static var previews: some View {
        HomePost()
    }
}
