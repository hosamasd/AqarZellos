//
//  HomeFilterViewModel.swift
//  AqarZellos
//
//  Created by hosam on 04/08/2021.
//

import SwiftUI
import MapKit

struct ParkingItem: Identifiable {
    let id = UUID()
    let name: String
    let address: String
    let photoName: String
    let place: String
    let carLimit: Int
    let location: CLLocationCoordinate2D
    let fee: CGFloat
    var hour: String
}

struct DataS {
    static let spots = [
        ParkingItem(name: "California Parking", address: "2351 Mission St, San Francisco", photoName: "1", place: "B1", carLimit: 45, location: CLLocationCoordinate2D(latitude: 37.7985599, longitude: -122.4100056), fee: 5.0, hour: "0.0"),
        ParkingItem(name: "Green St Parking", address: "654 Green St, San Francisco", photoName: "2", place: "A6", carLimit: 15, location: CLLocationCoordinate2D(latitude: 37.7993822, longitude: -122.4077079), fee: 3.0, hour: "0.0"),
        ParkingItem(name: "Bank of America", address: "440 Pine St, San Francisco", photoName: "3", place: "B4", carLimit: 20, location: CLLocationCoordinate2D(latitude: 37.799386, longitude: -122.4092267), fee: 4.0, hour: "0.0"),
        ParkingItem(name: "North Beach Parking", address: "701 Stevenson St, San Francisco", photoName: "4", place: "C2", carLimit: 25, location: CLLocationCoordinate2D(latitude: 37.7983406, longitude: -122.4064634), fee: 3.0, hour: "0.0"),
        ParkingItem(name: "Border Parking", address: "1647 Powell St, San Francisco", photoName: "5", place: "A12", carLimit: 12, location: CLLocationCoordinate2D(latitude: 37.7998639, longitude: -122.4110218), fee: 2.0, hour: "0.0"),
        ParkingItem(name: "Public Parking", address: "455 Castro St, San Francisco", photoName: "6", place: "B9", carLimit: 90, location: CLLocationCoordinate2D(latitude: 37.7978987, longitude: -122.4098621), fee: 1.0, hour: "0.0")
    ]
}

class HomeFilterViewModel: ObservableObject {
    
    @Published var alert = false
    @Published var alertMsg = ""
    @Published var isLoading = false
    @Published var isSearch = false

    
    @Published var nameDrop = ""
    @Published var typeDrop = ""
    @Published var areaDrop = ""
    
    //slider
    @State var minPrice:CGFloat = 2000
    @State var maxPrice:CGFloat = 2000000
    
    @State var minSpace:CGFloat = 100
    @State var maxSpace:CGFloat = 1000000
    
    @Published var roomsNum = 0
    @Published var bathroomNum = 0
    
    @Published var spots = DataS.spots
    @Published var selectedPlace: ParkingItem?
    
    @Published var region = MKCoordinateRegion()
    
    @Published var citys:[String] = [
        "cairo","zagazig","asswan","alex","suez",
        //        "cairo","zagazig","asswan","alex","suez",
        //        "cairo","zagazig","asswan","alex","suez",
        //        "cairo","zagazig","asswan","alex","suez"
    ]
    
    @Published var areas:[String] = [
        "zag","sheiba","nakirea","helwan","porto"
    ]
    
    @Published var types:[String] = [
        "Type1","Type2","Type3","Type4","Type5"
    ]
    
    @Published var postsArray:[PostModel] = [
        
        //        PostModel(name: "Home", pic: "images1", desc: "10.000 EGY , 150 M"),
        //        PostModel(name: "Home", pic: "images1", desc: "10.000 EGY , 150 M"),
        //        PostModel(name: "Home", pic: "images1", desc: "10.000 EGY , 150 M"),
        //        PostModel(name: "Home", pic: "images1", desc: "10.000 EGY , 150 M"),
        //        PostModel(name: "Home", pic: "images1", desc: "10.000 EGY , 150 M"),
        //        PostModel(name: "Home", pic: "images1", desc: "10.000 EGY , 150 M"),
        //        PostModel(name: "Home", pic: "images1", desc: "10.000 EGY , 150 M"),
        //        PostModel(name: "Home", pic: "images1", desc: "10.000 EGY , 150 M"),
        
    ]
    
    init() {
//        getDatas()
    }
    
    func getDatas()  {
        withAnimation{isLoading.toggle()}
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+5) {
            withAnimation{self.isLoading.toggle()}
            
            self.region = MKCoordinateRegion(center: CLLocationCoordinate2D(
            latitude: DataS.spots[0].location.latitude,
            longitude: DataS.spots[0].location.longitude),
        span: MKCoordinateSpan(latitudeDelta: 0.007, longitudeDelta: 0.007))
            
            self.postsArray = [
                
                PostModel(name: "Home", pic: "images1", desc: "10.000 EGY , 150 M"),
                PostModel(name: "Home", pic: "images1", desc: "10.000 EGY , 150 M"),
                PostModel(name: "Home", pic: "images1", desc: "10.000 EGY , 150 M"),
                PostModel(name: "Home", pic: "images1", desc: "10.000 EGY , 150 M"),
                PostModel(name: "Home", pic: "images1", desc: "10.000 EGY , 150 M"),
                PostModel(name: "Home", pic: "images1", desc: "10.000 EGY , 150 M"),
                PostModel(name: "Home", pic: "images1", desc: "10.000 EGY , 150 M"),
                PostModel(name: "Home", pic: "images1", desc: "10.000 EGY , 150 M"),
                
            ]
            
        }
        
        
    }
}
