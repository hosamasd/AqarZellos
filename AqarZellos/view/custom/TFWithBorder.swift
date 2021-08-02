//
//  TFWithBorder.swift
//  AqarZellos
//
//  Created by hosam on 02/08/2021.
//

import SwiftUI

struct TFWithBorder: View {
    @Binding var txt:String
    var hint = "Email or Number phone"
    
    var isHide = false
    var isSecure = false
    
    @Binding var isPass:Bool
    
    
    var body: some View {
        VStack(spacing:8) {
            
            HStack {
                ZStack(alignment: .leading) {
                    if txt.isEmpty {
                        Text(LocalizedStringKey(hint))
                            .font(.system(size:14))
                            //                                                    .foregroundColor(Color.red)
                            .foregroundColor(.white)
                            //                        .font(.title)
                            .fontWeight(.bold)
                    }
                    if !isPass {
                        TextField(hint,text:$txt)
                            .font(.system(size:14))
                            .foregroundColor(.white)
                        
                    }
                    else  {
                        SecureField(hint,text:$txt)
                            .font(.system(size:14))
                            .foregroundColor(.white)
                        
                        
                    }
                    
                    
                }
                .padding(.leading,4)
                
                Spacer()
                
                Button(action: {withAnimation{
                    //                        self.isPass.toggle()
                    isPass.toggle()
                }}, label: {
                    
                    Image(systemName:isPass ? "eye.slash" :  "eye")
                        .foregroundColor(.white)
                })
                .opacity(isHide ? 1 : 0)
            }
            
            Divider()
                .frame(height:2)
                .background(Color("logBor"))
        }
        
    }
}

struct TFWithBorder_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        //        TFWithBorder(txt: .constant(""))
    }
}
