//
//  ContentView.swift
//  FlowerLand (pet)
//
//  Created by Артур Олехно on 23/03/2023.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var model: FlowerModel
    var body: some View {
        NavigationView {
            VStack {
                Text("Flowerland!")
                    .font(.title)
                    .padding()
                ScrollView {
                    LazyVStack {
                        ForEach(model.flowers) { module in
                            NavigationLink {
                                DetailView(flower: module)
                            } label: {
                                HomeViewRow(name: module.name, image: module.images[0], price: module.price)
                            }

                        }
                    }
                }
                .accentColor(.black)
                .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(FlowerModel())
    }
}
