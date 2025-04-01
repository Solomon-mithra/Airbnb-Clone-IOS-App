//
//  ExploreView.swift
//  AirbnbClone
//
//  Created by Yusif Imanov on 3/4/25.
//

import SwiftUI

struct ExploreView: View {
    
    @State private var showDestinationSearchView = false;
    
    var body: some View {
        VStack(alignment: .leading){
            if showDestinationSearchView{
                DestinationSearchView(show: $showDestinationSearchView)
                    .toolbar(.hidden, for:.tabBar)
            }
            else{
                NavigationStack{
                    ScrollView{
                        
                        SearchAndFilterBar()
                            .onTapGesture {
                                withAnimation(.snappy)
                                {
                                    showDestinationSearchView.toggle()
                                }
                            }
                        
                        LazyVStack(spacing:42){
                            ForEach( 0 ... 10, id: \.self) { listing in
                                NavigationLink(value: listing) {
                                    ListingItemView()
                                        .frame(height: 420)
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                                }
                            }
                        }.padding()
                    }
                    .navigationDestination(for: Int.self) { listing in
                        ListingDetailView()
                    }
                }
            }
        }
    }
}

#Preview {
    ExploreView()
}
