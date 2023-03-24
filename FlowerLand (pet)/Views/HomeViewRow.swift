//
//  HomeViewRow.swift
//  FlowerLand (pet)
//
//  Created by Артур Олехно on 23/03/2023.
//

import SwiftUI

struct HomeViewRow: View {
    
    var name: String
    var image: String
    var price: Int
    
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(Color(red: 233 / 255, green: 234 / 255, blue: 236 / 255))
                .cornerRadius(10)
                .shadow(radius: 5)
                .aspectRatio(CGSize(width: 335, height: 175), contentMode: .fit)
            HStack {
                Image(image)
                    .resizable()
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                
                Spacer()
                
                VStack (alignment: .center, spacing: 10) {
                    Text(name)
                        .bold()
                        .font(.largeTitle)
                    Text("\(price) €")
                        .font(.title)
                }
                .padding(.leading, 20)
                
                Spacer()
                
            }
            .padding(.horizontal, 20)

        }
    }
}

struct HomeViewRow_Previews: PreviewProvider {
    static var previews: some View {
        HomeViewRow(name: "Roses", image: "rose3", price: 35)
    }
}
