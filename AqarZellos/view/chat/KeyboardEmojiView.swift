//
//  KeyboardEmojiView.swift
//  AqarZellos
//
//  Created by hosam on 03/08/2021.
//

import SwiftUI

struct KeyboardEmojiView: View {
    @Binding var show : Bool
    @Binding var txt : String
    
    var body : some View{
        
        ZStack(alignment: .topLeading) {
            
            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack(spacing: 15){
                    
                    ForEach(self.getEmojiList(),id: \.self){i in
                        
                        HStack(spacing: 25){
                            
                            ForEach(i,id: \.self){j in
                                
                                Button(action: {
                                    
                                    self.txt += String(UnicodeScalar(j)!)
                                    
                                }) {
                                    
                                    if (UnicodeScalar(j)?.properties.isEmoji)!{
                                        
                                        Text(String(UnicodeScalar(j)!)).font(.system(size: 55))
                                    }
                                    else{
                                        
                                        Text("")
                                    }
                                }
                            }
                        }
                    }
                }
                .padding(.top)
                
                
            }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 3)
            .padding(.bottom, UIApplication.shared.windows.first?.safeAreaInsets.bottom)
            .background(Color.white)
            .cornerRadius(25)

            
            Button(action: {
                
                self.show.toggle()
                
            }) {
                
                Image(systemName: "xmark").foregroundColor(.black)
                
            }.padding()
        }
    }
    
    func getEmojiList()->[[Int]]{
        
        var emojis : [[Int]] = []
        
        for i in stride(from: 0x1F601, to: 0x1F64F, by: 4){
            
            var temp : [Int] = []
            
            for j in i...i+3{
                
                temp.append(j)
            }
            
            emojis.append(temp)
        }
        
        return emojis
    }
}

struct EmojiView_Previews: PreviewProvider {
    static var previews: some View {
        KeyboardEmojiView(show: .constant(true), txt: .constant(""))
    }
}
