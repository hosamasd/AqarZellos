//
//  SHomeChat.swift
//  AqarZellos
//
//  Created by hosam on 03/08/2021.
//

import SwiftUI

struct SHomeChat: View {
    @State var columns = Array(repeating: GridItem(.flexible(), spacing: 12), count: 1)
    @StateObject var vm = HomeChatViewModel()
    var x =                 MessageModel(name: "Marie Winter", pic: "sss", desc: "Happiness is not something readymade. \nIt comes from your own actions.")
    @State var scrolled = false
    
    var body: some View {
        ZStack {
            
            Image("1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth:getFrameSize().width,maxHeight: getFrameSize().height+20)
                .edgesIgnoringSafeArea(.top)
            
            VStack {
                
                HomeChatTopView()
                    .padding(.horizontal,24)
                
                //                if vm.messagesArray.isEmpty {
                //                    Text("No Results Found")
                //                        .padding(.top,20)
                //                }
                //                else {
                
                VStack{
                    
                    ScrollViewReader{reader in
                        
                        ScrollView( .vertical, showsIndicators: false){
                            
                            
                            
                            VStack {
                                HStack {
                                    
                                    Image(x.pic)
                                        .resizable()
                                        .frame(width: 62, height: 62)
                                        .cornerRadius(10)
                                    
                                    Text(x.name)
                                        .font(.system(size: 20))
                                        .fontWeight(.semibold)
                                        .frame(maxWidth:.infinity,alignment: .leading)
                                        .padding(.top,40)
                                        .padding(.bottom,40)
                                }
                                
                                Divider()
                            }
                            
                            LazyVStack(alignment: .center, spacing: 20) {
                                
                                // assigning name as ID...
                                
                                ForEach(vm.messagesArray){gradient in
                                    
                                    ChatBubble(msg:gradient,vm:vm)
                                }
                            }
                            .id("MSG_VIEW")
//                            .padding()
//                            .padding(.horizontal)
                            .padding(.vertical)
                        }
                        .padding(.top,20)
                                                    .padding(.horizontal,24)
                        
                        
                        
                        .onChange(of: vm.messagesArray, perform: { value in
                            
                            withAnimation{
                                reader.scrollTo("MSG_VIEW",anchor: .bottom)
                            }
                        })
                        .onAppear(perform: {
                            // scrolling to bottom...
                            reader.scrollTo("MSG_VIEW",anchor: .bottom)
                        })
                        
                        
                    }
//                    .padding()
                    .zIndex(0)
//                                        .background(Color.white)
//                                        // its asking some thing here I dont know may be its bug...
//                                        .shadow(radius: 0)
//                                        //                .padding(.top)
//                                        .clipShape(CustomCorners(corners: [.topRight,.topLeft], width: 30))
                    
                    Spacer()
                    
             
//                    .padding(.horizontal)
                }
                .background(Color.white)
                // its asking some thing here I dont know may be its bug...
                .shadow(radius: 0)
                //                .padding(.top)
                .clipShape(CustomCorners(corners: [.topRight,.topLeft], width: 30))
//                .padding(.bottom,40)
                .padding(.top,20)

//                ZStack {
//
//                    //chat box
//                    ChatBoxMessagesView(vm:vm)
//                        //                .padding()
//                        .padding(.horizontal)
//                        .animation(.easeOut)
//
//
//                        .padding(.bottom,getSafeArea()?.bottom == 0 ? 30 : 30)
//
//                        .modifier(SecondAdaptsToSoftwareKeyboard())
//
//                        .offset(y:vm.showEmoj ? -160 : 0)
//
//                    if vm.showEmoj {
//                        KeyboardEmojiView(show: $vm.showEmoj, txt: self.$vm.txtMessage)
//                            .offset(y: self.vm.showEmoj ?  (UIApplication.shared.windows.first?.safeAreaInsets.bottom)! : UIScreen.main.bounds.height)
//                            .animation(.easeOut)
//
//                            .transition(.move(edge: .bottom))
//
//                    }
//
//
//                }
//                .background(Color.red)
                
//                Spacer()
                
                ZStack {
                    
                    //chat box
                    ChatBoxMessagesView(vm:vm)
                        //                .padding()
                        .padding(.horizontal)
                        .animation(.easeOut)
                        
                        
                        .padding(.bottom,getSafeArea()?.bottom == 0 ? 30 : 30)
                        
                        .modifier(SecondAdaptsToSoftwareKeyboard())
                        
                        .offset(y:vm.showEmoj ? -160 : 0)
                    
                    if vm.showEmoj {
                        KeyboardEmojiView(show: $vm.showEmoj, txt: self.$vm.txtMessage)
                            .offset(y: self.vm.showEmoj ?  (UIApplication.shared.windows.first?.safeAreaInsets.bottom)! : UIScreen.main.bounds.height)
                            .animation(.easeOut)
                            
                            .transition(.move(edge: .bottom))
                        
                    }
                    
                    
                }
                .background(Color.white)
                
            }
            .padding(.top,40)
            
            
            
//            .edgesIgnoringSafeArea(.all)
            
            if vm.isLoading {
                LoadingCapsuleSpacing()
            }
            
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct SHomeChat_Previews: PreviewProvider {
    static var previews: some View {
        SHomeChat()
    }
}
