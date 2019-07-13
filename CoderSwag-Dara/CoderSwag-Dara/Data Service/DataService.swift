//
//  Service.swift
//  CoderSwag-Dara
//
//  Created by Daramfon Akpan on 7/12/19.
//  Copyright © 2019 Daramfon Akpan. All rights reserved.
//

import Foundation

class DataService{
    
  static let instance = DataService()
    
    private let categoriess = [Category(title: "SHIRTS", imageName: "shirts.png"), Category(title: "HATS", imageName: "hats.png"),Category(title: "HOODIES", imageName: "hoodies.png"),Category(title: "DIGITAL", imageName: "digital.png")]
    
    private let hats = [Products(productTitle: "Dara Black Hats", productImageName: "hat01.png", productPrice: "$20"),Products(productTitle: "Dara White Hats", productImageName: "hat02.png", productPrice: "$20"),Products(productTitle: "Dara Red Hats", productImageName: "hat03.png", productPrice: "$20"),Products(productTitle: "Dara Purple Hats", productImageName: "hat04.png", productPrice: "$20")]
    private let shirts = [Products(productTitle: "Dara Black Shirts", productImageName: "shirt01.png", productPrice: "$40"),Products(productTitle: "Dara White Shirts", productImageName: "shirt02.png", productPrice: "$40"),Products(productTitle: "Dara Red Shirts", productImageName: "shirt03.png", productPrice: "$40"),Products(productTitle: "Dara Green Shirts", productImageName: "shirt04.png", productPrice: "$40")]
    private let hoodies = [Products(productTitle: "Dara Red Hoodie", productImageName: "hoodie01.png", productPrice: "$500"),Products(productTitle: "Dara Brown Hoodie", productImageName: "hoodie02.png", productPrice: "$500"),Products(productTitle: "Dara Green Hoodie", productImageName: "hoodie03.png", productPrice: "$500"),Products(productTitle: "Dara Yellow Hoodie", productImageName: "hoodie04.png", productPrice: "$500")]
    private let digital = [Products]()
    
    func getCategories()-> [Category]{
        return categoriess
    }
    func getProducts(title:String) -> [Products]{
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "DIGITAL":
            return getShirts()
        default:
            return getShirts()
        }
        
    }
    
    func getShirts() -> [Products]{
        return shirts
    }
    func getHats() ->[Products]{
        return hats
    }
    func getHoodies() -> [Products]{
        return hoodies
    }
    
    
    

}
