//
//  ListingImageCarouselView.swift
//  AirbnbClone
//
//  Created by Yusif Imanov on 3/7/25.
//

import SwiftUI

struct ListingImageCarouselView: View {
    
    var images = [
        "image-1",
        "image-2",
        "image-3",
    ]
    
    var body: some View {
        TabView{
            ForEach(images, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
            .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarouselView()
}
