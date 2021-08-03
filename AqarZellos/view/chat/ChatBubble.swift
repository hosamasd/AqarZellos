//
//  ChatBubble.swift
//  AqarZellos
//
//  Created by hosam on 03/08/2021.
//

import SwiftUI

struct ChatBubble: View {
    var msg : MessageModel
    
    @ObservedObject var vm:HomeChatViewModel
    @State var record = false
    //    @State var animatedValue : CGFloat = 55
    @State var animatedValue : CGFloat = 25
    @State var timer = Timer.publish(every: 0.01, on: .main, in: .common)
    
    var body: some View {
        HStack(alignment: .top,spacing: 10){
            
            if msg.myMsg{
//
//                // pushing msg to left...
//
//                // minimum space ...
//
//                // Modifying for Image...
//
                Spacer(minLength: 25)
//
//
                if msg.photo == nil{
//
//
//
                        Text(msg.desc)
                            //                        .font()
                            .font(.system(size: 14))
                            .foregroundColor(.black)
                            .padding(.all)
                            .background(Color.gray.opacity(0.2))

//                                                    .background(Color.gra.opacity(0.06))
                            .clipShape(BubbleArrow(myMsg: msg.myMsg))
//
//
                    }
//
                else{
//
//
//
                    Image(uiImage: UIImage(data: msg.photo!)!)
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width - 150, height: 150)
                        .clipShape(BubbleArrow(myMsg: msg.myMsg))


                }
//
//                // profile Image...
//
//                Image(msg.pic)
//                    .resizable()
//                    .frame(width: 30, height: 30)
//                    .clipShape(Circle())
//                    .padding(.leading,4)
//                    .offset(x: -40, y: -20)
            }
//
            else{

                // pushing msg to right...

                // profile Image...

                
                Image(msg.pic)
                    .resizable()
                    .frame(width: 20, height: 20)
//                    .clipShape(Circle())
                    .padding(.trailing,4)
                    .offset(x: 0, y: -20)


                if msg.photo == nil{

                    Text(msg.desc)
                        .font(.system(size: 14))
                        .foregroundColor(.white)
                        .padding(.all)
                        .background(Color("ssssss"))
                        .clipShape(BubbleArrow(myMsg: msg.myMsg))
                        .offset(x: -30, y: 0)


                }
                else{

                    Image(uiImage: UIImage(data: msg.photo!)!)
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width - 150, height: 150)
                        .clipShape(BubbleArrow(myMsg: msg.myMsg))
                }
//
//
                
//                Spacer()
                Spacer(minLength: 35)
            }
        }
        .padding(.vertical,4)

        //        .padding(.horizontal)
        // For SCroll Reader....
        .id(msg.id)
    }
}

struct ChatBubble_Previews: PreviewProvider {
    static var previews: some View {
        HomeChat()
    }
}
