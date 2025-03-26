//
//  ListingItemView.swift
//  AirbnbClone
//
//  Created by Yusif Imanov on 3/4/25.
//

import SwiftUI

struct ListingItemView: View {
    
    var images = [
        "image-1",
        "image-2",
        "image-3",
    ]
    
    var body: some View {
        VStack(spacing: 8){
            //images
            ListingImageCarouselView()
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                
            
            //listing details
            HStack(alignment: .top){
                VStack(alignment: .leading){
                    Text("Miami, Florida")
                        .foregroundStyle(.black)
                        .fontWeight(.semibold)
                    Text("12 mi away")
                        .foregroundStyle(.gray)
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)
                    HStack(spacing: 4){
                        Text("$299")
                            .fontWeight(.semibold)
                        Text("night")
                    }.foregroundStyle(.black)
                    
                }
                
                Spacer()
                
                //Rating
                HStack(spacing: 2){
                    Image(systemName: "star.fill")
                    Text("4.86")
                }
                .foregroundStyle(.black)
                
                
            }.font(.footnote)
                .padding(.horizontal, 4)
            
            
        }
    }
}

#Preview {
    ListingItemView()
}
