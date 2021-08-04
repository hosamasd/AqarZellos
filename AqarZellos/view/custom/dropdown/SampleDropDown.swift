//
//  SampleDropDown.swift
//  Vendor XDss
//
//  Created by hosam on 4/3/21.
//

import SwiftUI
struct SampleDropDown: View {
    
    var lists =  [String]()

    let action : (String?) -> Void
    
    var body: some View {
        
        ScrollView {
        VStack(alignment: .center, spacing: 4){
            
            ForEach(0..<lists.count, id: \.self){ valueStore in
                
                Button(action: {
                    
                    
                    
                }) {
                    
                    Text(lists[valueStore] )
                        
                        .foregroundColor(Color.black)

                        .padding([.leading, .top], 4)
//                    HStack(alignment: .center, spacing: 8) {
//
////                        Image(systemName: "bell")
////                            .resizable()
////                            .frame(width: 30, height: 30, alignment: .center)
////                            .clipShape(Circle())
//
//                        VStack (alignment: .center){
//                            Text(lists[valueStore] )
//
//                                .foregroundColor(Color.black)
//
//                                .padding([.leading, .top], 4)
//
//                            Text("#jetpack")
////                                .font(.custom(Constants.FONT_REGULAR, size: 12))
//                                .foregroundColor(Color.black)
//                                .padding([.leading, .bottom], 2)
//
//                        }
//
//
//                    }
//                    .foregroundColor(Color.black)
                    
                }
                .frame(maxWidth: .infinity,maxHeight:600)//, height: .none, alignment: .center)
                
                
                Divider().background(Color.black)
                
            }
            
        }
        }
        .padding(.all, 12)
//        .background(RoundedRectangle(cornerRadius: 6).foregroundColor(.white).shadow(radius: 2))
        
    }
}

//struct SampleDropDown_Previews: PreviewProvider {
//
//    static var previews: some View {
//        HomeIncubation()
////        SampleDropDown(action: {data in}).padding()
//    }
//}
