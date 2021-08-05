//
//  AqarZellosApp.swift
//  AqarZellos
//
//  Created by hosam on 02/08/2021.
//

import SwiftUI

@main
struct AqarZellosApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear(perform: UIApplication.shared.addTapGestureRecognizer)
//                .preferredColorScheme(.dark) // white tint on status bar
        }
    }
}
