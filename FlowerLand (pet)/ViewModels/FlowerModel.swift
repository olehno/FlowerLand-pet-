//
//  FlowerModel.swift
//  FlowerLand (pet)
//
//  Created by Артур Олехно on 23/03/2023.
//

import Foundation

class FlowerModel: ObservableObject {
    
    @Published var flowers: [Flower] = []
    
    init() {
        getLocalData()
    }
    
    func getLocalData() {
        let pathString = Bundle.main.path(forResource: "Data", ofType: "json")
        if pathString != nil {
            let url = URL(fileURLWithPath: pathString!)
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                do {
                    var jsonFlowers = try decoder.decode([Flower].self, from: data)
                    for index in 0..<jsonFlowers.count {
                        jsonFlowers[index].id = UUID()
                    }
                    self.flowers = jsonFlowers
                }
                catch {
                    print("Couldn't parse Flowers")
                }
            }
            catch {
                print("Couldn't create Data object")
            }
        }
    }
}
