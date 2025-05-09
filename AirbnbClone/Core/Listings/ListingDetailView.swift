//
//  ListingDetailView.swift
//  AirbnbClone
//
//  Created by Yusif Imanov on 3/7/25.
//

import SwiftUI
import MapKit

struct ListingDetailView: View {
    
    @Environment(\.dismiss) var dismiss

    var body: some View {
        ScrollView{
            
            ZStack(alignment:.topLeading) {
                ListingImageCarouselView()
                    .frame(height: 320)
                
                Button{
                    dismiss()
                }label: {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.black)
                        .background{
                            Circle()
                                .fill(Color.white)
                                .frame(width: 32, height: 32)
                        }
                        .padding(32)
                        .padding(.top, 50)
                }
            }
            
            VStack(alignment: .leading, spacing: 8){
                Text("Miami Villa")
                    .font(.title)
                    .fontWeight(.semibold)
                
                VStack(alignment: .leading){
                    //Rating
                    HStack(spacing: 2){
                        Image(systemName: "star.fill")
                        Text("4.86")
                        
                        Text(" - ")
                        
                        Text("28 Reviews")
                            .underline()
                            .fontWeight(.semibold)
                        
                    }.font(.caption)
                        .foregroundStyle(.black)
                
                    Text("Miami, Florida")
                        .font(.caption)
                    
                    
                }
                
                
            }
            .padding(.leading)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Divider()
            
            //host info view
            HStack(){
                VStack(alignment: .leading){
                    Text("Entire Villa hosted by Jhon Smith")
                        .font(.headline)
                        .frame(width: 250, alignment: .leading)
                    
                    HStack(spacing: 2){
                        Text("4 guests -")
                        Text("4 bedrooms -")
                        Text("4 beds -")
                        Text("3 baths")
                    }
                    .font(.caption)
                }.frame(width: 300, alignment: .leading)
                
                Spacer()
                
                Image("image-2")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 64, height: 64)
                    .clipShape(Circle())
            }.padding()
            
            Divider()
            
            //listing features
            VStack(alignment: .leading, spacing: 16){
                ForEach(0 ..< 2){feature in
                    HStack(spacing:12){
                        Image(systemName: "medal")
                        
                        VStack(alignment: .leading){
                            Text("Superhost")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            
                            Text("Superhosts are highly expirenced hosts who have a proven track record of delivering exceptional guest experiences.")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                    }
                }
            }.padding()
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Divider()
            
            //bedrooms view
            VStack(alignment: .leading, spacing: 16){
                Text("Where you'll sleep?")
                    .font(.headline)
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing: 16){
                        ForEach(1 ..< 5){bedroom in
                            VStack(alignment: .leading, spacing: 4){
                                Image(systemName: "bed.double")
                                Text("Bedroom \(bedroom) ")
                                    .font(.caption)
                                    .fontWeight(.semibold)
                                
                            }.frame(width: 132, height: 100, alignment: .leading)
                                .padding(.horizontal)
                                .overlay{
                                    RoundedRectangle(cornerRadius: 12)
                                        .stroke(lineWidth: 1)
                                        .foregroundColor(.gray)
                                }
                        }
                    }
                }.scrollTargetBehavior(.paging)
            }.padding()
            
            Divider()
            
            //features view
            VStack(alignment: .leading,spacing: 16){
                Text("What this place offers")
                    .font(.headline)
                    
                ForEach( 0 ..< 5 ){ feature in
                    HStack{
                        Image(systemName: "wifi")
                            .frame(width:32)
                        
                        Text("Wifi")
                            .font(.footnote)
                        
                        Spacer()
                    }
                }
                
            }
            .padding()
            
            Divider()
            
            VStack(alignment: .leading, spacing: 16){
                Text("Where you'll be")
                    .font(.headline)
                
                Map()
                    .frame(height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                
            }   .padding()
                
            
        }
        .toolbar(.hidden, for:.tabBar)
        .ignoresSafeArea()
        .navigationBarHidden(true) 
        .padding(.bottom, 64)
        .overlay(alignment:.bottom){
            VStack{
                Divider()
                    .padding(.bottom)
                HStack{
                    VStack(alignment: .leading){
                        Text("$500")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        
                        Text("Total before taxes")
                            .font(.footnote)
                        
                        Text("Oct 15 - 20")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .underline()
                    }
                    
                    Spacer()
                    
                    Button{} label:{
                        Text("Reserve")
                            .foregroundStyle(.white)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width:140, height: 40)
                            .background(Color.pink)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    }
                }.padding(.horizontal, 30)
            }.background(.white)
        }
    }
}

#Preview {
    ListingDetailView()
}
