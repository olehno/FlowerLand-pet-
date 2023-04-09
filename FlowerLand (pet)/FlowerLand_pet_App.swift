//
//  FlowerLand__pet_App.swift
//  FlowerLand (pet)
//
//  Created by Артур Олехно on 23/03/2023.
//

import SwiftUI
import Firebase

@main
struct FlowerLand_pet_App: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(FlowerModel())
        }
    }
}
