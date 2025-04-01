//
//  ContentView.swift
//  AirbnbClone
//
//  Created by Yusif Imanov on 3/4/25.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var scanData: ScanData

    var body: some View {
        MainTabView()
            .onOpenURL { url in
                handleURL(url)
            }
    }

    func handleURL(_ url: URL) {
        // For URLs like airbnbclone://scan/123
        if url.host == "scan" || url.pathComponents.count > 1 {
            let scanned = url.pathComponents.dropFirst().joined(separator: "/")
            scanData.scannedText = scanned
        }
    }
}


#Preview {
    ContentView()
        .environmentObject(ScanData())
}
