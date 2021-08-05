//
//  HomeMessages.swift
//  AqarZellos
//
//  Created by hosam on 03/08/2021.
//

import SwiftUI

struct HomeMessages: View {
    @State var columns = Array(repeating: GridItem(.flexible(), spacing: 12), count: 1)
    @StateObject var vm = HomeMessagesViewModel()
    
    var body: some View {
        ZStack {
            
            Image("1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth:getFrameSize().width,maxHeight: getFrameSize().height+20)
                .edgesIgnoringSafeArea(.top)
            
            VStack {
                
                HomeMessagesTopView()
                    .padding(.horizontal,24)
                
              
                    
                if vm.messagesArray.isEmpty {
//                    Text("No Results Found")
//                        .padding(.top,20)
                }
                else {
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        
                        
                        VStack {

                            Text("Messages")
                                .font(.system(size: 40))
                                .fontWeight(.semibold)
                                .frame(maxWidth:.infinity,alignment: .leading)
                                .padding(.top,40)
                                .padding(.bottom,40)

                            LazyVGrid(columns: columns,spacing: 12){
                                
                                // assigning name as ID...
                                
                                ForEach(vm.messagesArray){gradient in
                                    
                                    NavigationLink(destination:
                                                    HomeChat()
                                    )  {
                                    MessageRowView(x: gradient)
                                }
                                }
                            }
                            .padding(.bottom)
                        }
                        .padding(.horizontal,24)

//                        .background(Color.white)
//                        .cornerRadius(30)
//                        .padding(.top,20)
                        
                    }
                    .zIndex(0)
                    .background(Color.white)
                    // its asking some thing here I dont know may be its bug...
                    .shadow(radius: 0)
                    //                .padding(.top)
                    .clipShape(CustomCorners(corners: [.topRight,.topLeft], width: 30))

                    .padding(.top)
                }
             
                
                Spacer()
                
            }
            .padding(.top,40)
            
            if vm.isLoading {
                LoadingCapsuleSpacing()
            }
            
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct HomeMessages_Previews: PreviewProvider {
    static var previews: some View {
        HomeMessages()
    }
}
