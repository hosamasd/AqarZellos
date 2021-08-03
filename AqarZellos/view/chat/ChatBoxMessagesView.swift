//
//  ChatBoxMessagesView.swift
//  AqarZellos
//
//  Created by hosam on 03/08/2021.
//

import SwiftUI

struct ChatBoxMessagesView: View {
    @ObservedObject var vm:HomeChatViewModel
    @State var textHeight: CGFloat = 0
    var textFieldHeight: CGFloat {
        let minHeight: CGFloat = 40
        let maxHeight: CGFloat = 500
        
        if textHeight < minHeight {
            return minHeight
        }
        
        if textHeight > maxHeight {
            return maxHeight
        }
        
        return textHeight
    }
    
    var body: some View {
        
        
        
        //        HStack(spacing: 15){
        
        HStack(spacing: 15){
            
            VStack {
                
                if textHeight > 60 {
                    Spacer()
                }
                
                if vm.txtMessage != "" {
                    
                    Button(action: {
                        
                        withAnimation{
                            vm.showEmoj.toggle()
                        }
                        // toogling image picker...
                        
                        //                            imagePicker.toggle()
                        
                    }, label: {
                        Circle()
                            .fill(Color.green)
                            .overlay(
                                
                                Image( "group4739")
                                    .font(.system(size: 22))
                                    .foregroundColor(.gray)
                            )
                            .frame(width: 36, height: 36)
                    })
                    .padding(.leading)
                }
                
            }
            
            
            
            
            ZStack(alignment: .leading) {
                if vm.txtMessage.isEmpty { Text(LocalizedStringKey("Message"))
                    .foregroundColor(.black.opacity(0.6))
                    //                    .fontWeight(.semibold)
                    //                    .font(.title3)
                }
                //                    SecondThirdCustomTextFieldHelp(txt: $vm.txtMessage,hint:"Message")
                
                DynamicHeightTextField( text: self.$vm.txtMessage, height: $textHeight)
                //                        .foregroundColor(.black.opacity(0.6))
                
            }
            .padding(.leading, 8)
            //            .padding(.horizontal,8)
            
            Button(action: {
                
                withAnimation{
                    
                    
                    
                }
                // toogling image picker...
                
                //                            imagePicker.toggle()
                
            }, label: {
                
                Image("path9020")
                    .font(.system(size: 22))
                    .foregroundColor(.gray)
                
                
            })
            
            
            //            }
            
            
            // Send Button...
            
            // hiding view...
            
            VStack {
                if textHeight > 60 {
                    Spacer()
                }
                
                Button(action: {
                    
                    withAnimation(.easeIn){
                        withAnimation(.easeIn){
                            
                            self.vm.messagesArray.append(MessageModel(name: "Marie Winter", pic: "sss", desc: vm.txtMessage,myMsg:true,isShow:true,photo: nil))
                            
                        }
                        
                        vm.txtMessage = ""
                        
                    }
                    
                }, label: {
                    
                    Circle()
                        .fill(Color.green.opacity(vm.txtMessage != "" ? 1 : 0.2))
                        .overlay(
                            Image( "sentMail")
                                .font(.system(size: 22))
                                .foregroundColor(.gray
                                )
                                .frame(width: 36, height: 36)
                        )
                })
                .frame(width: 36, height: 36)
                .padding(.trailing)
                .disabled(vm.txtMessage == "" )
            }
            
        }
        
        .padding(.vertical, 12)
        
        .background(Color.gray.opacity( vm.showEmoj ? 1 : 0.2))
        
        .clipShape(Capsule())
        .frame( height: textFieldHeight)
        //            .padding(.horizontal)
        //            .padding(.horizontal)
        
        
    }
}

struct ChatBoxMessagesView_Previews: PreviewProvider {
    static var previews: some View {
        //        ContentView()
        ChatBoxMessagesView(vm: HomeChatViewModel())
    }
}
