//
//  HomeCPost.swift
//  AqarZellos
//
//  Created by hosam on 04/08/2021.
//

import SwiftUI
import MapKit


struct AnnotatedItem: Identifiable {
    let id = UUID()
    var name: String
    var coordinate: CLLocationCoordinate2D
}

struct HomeCPost: View {
    @Binding var show:Bool
    @StateObject var vm = HomeCPostViewModel()
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    
    @State private var sregion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 10, longitudeDelta: 10))
    
     var pointsOfInterest = [
        AnnotatedItem(name: "Times Square", coordinate: .init(latitude: 40.75773, longitude: -73.985708)),
        AnnotatedItem(name: "Flatiron Building", coordinate: .init(latitude: 40.741112, longitude: -73.989723)),
        AnnotatedItem(name: "Empire State Building", coordinate: .init(latitude: 40.748817, longitude: -73.985428))
    ]
    
    let annotations = [
        AnnotatedItem(name: "London", coordinate: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275)),
        AnnotatedItem(name: "Paris", coordinate: CLLocationCoordinate2D(latitude: 48.8567, longitude: -0.3508)),
        AnnotatedItem(name: "Rome", coordinate: CLLocationCoordinate2D(latitude: 47.9, longitude: -0.5)),
        AnnotatedItem(name: "Washington DC", coordinate: CLLocationCoordinate2D(latitude: 48.895111, longitude: -0.036667))
      ]
    
    
    var body: some View {
        ZStack {
            
            Image("1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth:getFrameSize().width,maxHeight: getFrameSize().height+20)
                .edgesIgnoringSafeArea(.top)
            
            VStack {
                
                HomeCPostTopView(show: $show)
                    .padding(.horizontal,24)
                VStack {
                    
                    ScrollView(isSmallDevice() ? .vertical : .vertical,showsIndicators:false) {
                        
//                        Map(coordinateRegion: $sregion, annotationItems: annotations) { item in
//
//                            MapAnnotation(coordinate: item.coordinate) {
//                                Circle()
//                                    .strokeBorder(Color.red, lineWidth: 4)
//                                    .frame(width: 40, height: 40)
//
////                            MapAnnotation(coordinate: item.coordinate) {
////                                RoundedRectangle(cornerRadius: 5.0)
////                                    .stroke(Color.purple, lineWidth: 4.0)
////                                    .frame(width: 30, height: 30)
//                            }
////                            MapMarker(coordinate: item.coordinate, tint: .red)
//                        }
//                                            Map(coordinateRegion: $region)
//                        
//                        .frame(width: getFrameSize().width, height: getFrameSize().height)
                        
                        Spacer()
                        
                    }
                    
                }
                .background(Color.white)
                //                .padding(.top)
                .clipShape(CustomCorners(corners: [.topRight,.topLeft], width: 30))
                
                .padding(.top)
                
                Spacer()
                
            }
            .padding(.top,40)
            
            
        }
    }
}

struct HomeCPost_Previews: PreviewProvider {
    static var previews: some View {
        HomeCPost(show: .constant(false))
    }
}
