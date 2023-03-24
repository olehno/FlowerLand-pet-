//
//  ImageSlider.swift
//  FlowerLand (pet)
//
//  Created by Артур Олехно on 23/03/2023.
//

import SwiftUI

struct ImageSlider: View {
    
    var images: [String]
    var body: some View {
        TabView {
            ForEach(images, id: \.self) { item in
                 Image(item)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

struct ImageSlider_Previews: PreviewProvider {
    static var previews: some View {
        ImageSlider(images: ["rose1", "rose2"])
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
