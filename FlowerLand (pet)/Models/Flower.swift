//
//  Flower.swift
//  FlowerLand (pet)
//
//  Created by Артур Олехно on 23/03/2023.
//

import Foundation

struct Flower: Identifiable, Decodable {
    var id: UUID?
    var name: String
    var description: String
    var images: [String]
    var price: Int
}
