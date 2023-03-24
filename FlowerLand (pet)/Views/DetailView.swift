//
//  DetailView.swift
//  FlowerLand (pet)
//
//  Created by Артур Олехно on 23/03/2023.
//

import SwiftUI

struct DetailView: View {
    var flower: Flower
    var body: some View {
        
        ScrollView {
            ImageSlider(images: flower.images)
                .frame(height: 300)
                .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            VStack (alignment: .leading) {
                
                Text(flower.name)
                    .font(.title)
                Text("\(flower.price) €")
                    .font(.title2)
                Divider()
                Text("About \(flower.name)")
                    .font(.title2)
                Text(flower.description)
                
                
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .safeAreaInset(edge: .bottom) {
            Button  {
                
            } label: {
                Text("Buy")
                    .font(.title2)
                    .bold()
            }
            .frame(maxWidth: .infinity)
            .padding(.vertical)
            .background((Color(red: 233 / 255, green: 234 / 255, blue: 236 / 255)))
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(flower: FlowerModel().flowers[0])
    }
}
