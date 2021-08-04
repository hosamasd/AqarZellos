//
//  DropDownGroup.swift
//  Doctor XD
//
//  Created by hosam on 4/12/21.
//

import SwiftUI

struct DropDownGroup: View {
    @State var expand = false
    @Binding var selectedDrop:String
    var lists =  [String]()
    var xx = [
        "cairo","zagazig","asswan","alex","suez"
    ]
    var title = "Insurance company"
    @Binding var ss:Bool
//    @State var spectLists = [
//        "Specialization1","Specialization2","Specialization3","Specialization4"
//    ]
        
       
        
        var body: some View {
            VStack() {
                
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
                        ss.toggle()
                    }
                    if expand {
                        
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
                        .background(Color.white)
                        //            .background(LinearGradient(gradient: .init(colors: [.blue, .purple]), startPoint: .top, endPoint: .bottom))
                        .cornerRadius(15)
                        //            .shadow(color: .gray, radius: 5)
                        .animation(.spring())
                
                Spacer()

                }
                
            }
        
//        GroupBox {
//           DisclosureGroup("Menu 1") {
//            ScrollView{
//            VStack {
//
////               Text("Item 1")
////               Text("Item 2")
////               Text("Item 3")
//
//            Text("Item 1")
//            Text("Item 2")
//            Text("Item 3")
//                VStack {
//            Text("Item 1")
//            Text("Item 2")
//            Text("Item 3")
//                }
//            Text("Item 1")
//            Text("Item 2")
//            Text("Item 3")
//                VStack {
//            Text("Item 1")
//            Text("Item 2")
//            Text("Item 3")
//                }
////            Text("Item 1")
////            Text("Item 2")
////            Text("Item 3")
//                VStack {
//                Text("Item 1")
//                Text("Item 2")
//                Text("Item 3")
//                }
//            }
//            }
//           }
//       }
    
}

struct DropDownGroup_Previews: PreviewProvider {
    static var previews: some View {
        DropDownGroup( selectedDrop: .constant("helklo"), ss: .constant(false))
    }
}
