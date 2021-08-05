//
//  MainHome.swift
//  AqarZellos
//
//  Created by hosam on 04/08/2021.
//

import SwiftUI
import MapKit

struct MainHome: View {
    @EnvironmentObject var vm : HomeFilterViewModel
    let annotations = [
        AnnotatedItem(name: "London", coordinate: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275)),
        AnnotatedItem(name: "Paris", coordinate: CLLocationCoordinate2D(latitude: 48.8567, longitude: -0.3508)),
        AnnotatedItem(name: "Rome", coordinate: CLLocationCoordinate2D(latitude: 47.9, longitude: -0.5)),
        AnnotatedItem(name: "Washington DC", coordinate: CLLocationCoordinate2D(latitude: 48.895111, longitude: -0.036667))
    ]
    @State private var sregion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 10, longitudeDelta: 10))
    
    var body: some View {
        ZStack {
            
            Image("1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth:getFrameSize().width,maxHeight: getFrameSize().height+20)
                .edgesIgnoringSafeArea(.top)
            
            VStack {
                
                MainHomeTopView(vm:vm)
                    .padding(.horizontal,24)
                
                VStack {
                    
                    //                    ScrollView(isSmallDevice() ? .vertical : .vertical,showsIndicators:false) {
                    
                    ZStack(alignment:.bottom) {
                        
                        Map(
                            coordinateRegion: $vm.region,
                            annotationItems: vm.spots) { spot in
                            MapAnnotation(
                                coordinate: spot.location,
                                anchorPoint: CGPoint(x: 0.5, y: 0.5)) {
                                Button(action: {
                                    vm.selectedPlace = spot
                                }, label: {
                                    SpotAnnotatonView(
                                        fee: "\(Int(spot.fee))",
                                        selected: spot.id == vm.selectedPlace?.id)
                                })
                            }
                        }
                        
//                        Map(coordinateRegion: $sregion, annotationItems: annotations) { item in
//
//                            MapAnnotation(coordinate: item.coordinate) {
//                                Circle()
//                                    .strokeBorder(Color.red, lineWidth: 4)
//                                    .frame(width: 40, height: 40)
//
//                            }
//                        }
                        
                        .cornerRadius(32)
                        
                        HomePostsView(vm:vm)
                        
                    }
                    .frame(width: getFrameSize().width, height: getFrameSize().height-200)
                    .padding(.top,20)
                    
                    
                    
                    Spacer()
                    
                }
                
                Spacer()
                
            }
            .padding(.top,40)
            
            if vm.isLoading {
//                LoadingCircleOpacity()
                LoadingCapsuleSpacing()
            }
            
            
        }
        .onAppear(perform: {
            if vm.postsArray.isEmpty {
                vm.getDatas()
            }
        })
    }
}

struct MainHome_Previews: PreviewProvider {
    static var previews: some View {
        MainHome()
    }
}

struct SpotAnnotatonView: View {
    let fee: String
    var selected: Bool = false
    var body: some View {
        ZStack {
            Image(selected ? "parking_marker" : "cost_marker")
                .resizable()
                .frame(width: 44, height: 44)
            
            Text("$\(fee)")
                .foregroundColor(.white)
                .font(.system(size: 14))
                .opacity(selected ? 0.0 : 1.0)
        }
    }
}
