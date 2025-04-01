//
//  ProfileView.swift
//  AirbnbClone
//
//  Created by Solomon Mithra on 3/30/25.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var scanData: ScanData

    var body: some View {
        VStack(spacing: 20) {
            Text("Profile!")
                .font(.largeTitle)

            Text("Scanned Result:")
                .font(.headline)

            Text(scanData.scannedText)
                .foregroundColor(.blue)
                .multilineTextAlignment(.center)
                .padding()
        }
        .padding()
    }
}

#Preview {
    ProfileView()
        .environmentObject(ScanData()) // required for preview to work
}
