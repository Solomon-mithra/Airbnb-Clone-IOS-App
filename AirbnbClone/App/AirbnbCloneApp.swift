//
//  AirbnbCloneApp.swift
//  AirbnbClone
//
//  Created by Yusif Imanov on 3/4/25.
//

import SwiftUI

@main
struct AirbnbCloneApp: App {
    @StateObject var scanData = ScanData()
    init(){
        UIView.appearance().overrideUserInterfaceStyle = .light
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(scanData)
                
        }
        
    }
}

