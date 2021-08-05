//
//  HomePostsView.swift
//  AqarZellos
//
//  Created by hosam on 04/08/2021.
//

import SwiftUI

struct HomePostsView: View {
    @ObservedObject var vm : HomeFilterViewModel
    @State var x = false
    var body: some View {
        VStack {
            
            ZStack {
                
                LinearGradient(gradient: Gradient(colors: [Color("bord"), Color("mains")]), startPoint: .top, endPoint: .bottom)
                    .offset(y:100)
                    .frame(height:60)
                
//                GeometryReader{mainView in
                    
                    
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        
                        HStack(spacing:12){
                            
                            
                            ForEach(vm.postsArray){gradient in
                                
                                
                                GeometryReader {geo in
                                    HomePostsViewRowView(x: gradient)
                                    
                                        .rotation3DEffect(
                                            Angle(degrees: (Double(geo.frame(in: .global).minX) - 24) / -12),
                                            axis: (x: 0, y: 60, z: 0)
                                        )
//                                        .scaleEffect(y:scaleValue(minY: geo.frame(in: .global).minX))
                                    
                                    //                            print(geo.frame(in: .global).minY)
                                    //                                .scaleEffect(scaleValue(mainFrame: mainView.frame(in: .global).minX, minY: geo.frame(in: .global).minX))
                                    //                                .scaleEffect(y:CGFloat(geo.frame(in: .global).width) / 2)
                                    //                                .rotation3DEffect(
                                    //                                    Angle(degrees: Double(geo.frame(in: .global).minX) - 40) / -20,
                                    //                                    axis: (x: 0.0, y: 10, z: 10)
                                    //                                )
                                }
                                .frame(width: getFrameSize().width/2 - 48, height: x ? 360 : 230)
                            }
                            
                        }
                    })
                    
//                }
                
                
                
            }
        }
        //        .padding(.horizontal,24)
        
        //            .padding(.bottom)
        
        
    }
    
//    func scaleValue(mainFrame : CGFloat,minY : CGFloat)-> CGFloat{
//
//        // adding animation...
//
//        withAnimation(.easeOut){
//
//            // reducing top padding value...
//
//            let scale = (minY - 12) / mainFrame
//
//            // retuning scaling value to Album View if its less than 1...
//
//            if scale > 1{
//
//                return 1
//            }
//            else{
//
//                return scale
//            }
//        }
//    }
    
    func scaleValue(minY : CGFloat)-> CGFloat{
        
        // adding animation...
        
       let ss =  (Double(minY - 24) / -12)
//        let ss = minY - (getFrameSize().width/2  + 48)
        
        withAnimation(.easeOut){
            
         
//            minY - 12
            // reducing top padding value...
            
//            let scale = (minY - 12) / mainFrame
//
//            // retuning scaling value to Album View if its less than 1...
//
//            if scale > 1{
//
//                return 1
//            }
//            else{
//
//                return scale
//            }
        }
        
        DispatchQueue.main.async {
            x = ss < 1 ? true : false

        }
        return  1//ss < 1 ? 3 : 1
    }
}

struct HomePostsView_Previews: PreviewProvider {
    static var previews: some View {
        //        HomePostsView(vm: HomeFilterViewModel())
        MainHome()
    }
}
